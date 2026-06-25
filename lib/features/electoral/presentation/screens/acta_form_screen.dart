import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'package:provider/provider.dart';
import '../controllers/electoral_controller.dart';
import '../../../auth/presentation/auth_controller.dart';
import '../../domain/entities/acta_escrutinio.dart';
import '../../domain/entities/mesa_electoral.dart';
import '../../domain/entities/voto_candidato.dart';
import '../../domain/repositories/electoral_repository.dart';
import '../../../../core/appwrite_service.dart';
import 'package:appwrite/appwrite.dart';

class ActaFormScreen extends StatefulWidget {
  final MesaElectoral mesa;
  final String dignidad; // 'alcalde' | 'prefecto'
  final bool puedeEditar; // coordinador puede editar cualquier acta
  final ActaEscrutinio? actaExistente;

  const ActaFormScreen({
    super.key,
    required this.mesa,
    this.dignidad = 'alcalde',
    this.puedeEditar = false,
    this.actaExistente,
  });

  @override
  State<ActaFormScreen> createState() => _ActaFormScreenState();
}

class _ActaFormScreenState extends State<ActaFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _sufragantesCtrl = TextEditingController();
  final _nulosCtrl = TextEditingController();
  final _blancoCtrl = TextEditingController();

  List<OrganizacionPolitica> _orgs = [];
  final Map<String, TextEditingController> _votosCtrls = {};

  File? _foto;
  double? _lat, _lng;
  String? _fotoFileId;

  bool _loadingOrgs = true;
  bool _guardando = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadOrgs();
    if (widget.actaExistente != null) _cargarActaExistente();
  }

  void _cargarActaExistente() {
    final a = widget.actaExistente!;
    _sufragantesCtrl.text = a.totalSufragantes.toString();
    _nulosCtrl.text = a.votosNulos.toString();
    _blancoCtrl.text = a.votosEnBlanco.toString();
    _lat = a.gpsLat;
    _lng = a.gpsLng;
    _fotoFileId = a.fotoFileId.isNotEmpty ? a.fotoFileId : null;
  }

  Future<void> _loadOrgs() async {
    final ec = context.read<ElectoralController>();
    await ec.loadOrganizaciones();
    if (!mounted) return;
    setState(() {
      _orgs = widget.dignidad == 'alcalde' ? ec.orgAlcalde : ec.orgPrefecto;
      for (final o in _orgs) {
        final ctrl = TextEditingController(text: '0');
        _votosCtrls[o.id] = ctrl;
        // rellenar si hay acta existente
        if (widget.actaExistente != null) {
          final candidatos = widget.actaExistente!.votosPorOrganizacion
              .where((v) => v.candidato == o.candidato);
          if (candidatos.isNotEmpty) {
            ctrl.text = candidatos.first.votos.toString();
          }
        }
      }
      _loadingOrgs = false;
    });
  }

  @override
  void dispose() {
    _sufragantesCtrl.dispose();
    _nulosCtrl.dispose();
    _blancoCtrl.dispose();
    for (final c in _votosCtrls.values) {
      c.dispose();
    }
    super.dispose();
  }

  // ── GPS ────────────────────────────────────────────────────────────────────

  Future<bool> _obtenerGPS() async {
    LocationPermission perm = await Geolocator.checkPermission();
    if (perm == LocationPermission.denied) {
      perm = await Geolocator.requestPermission();
    }
    if (perm == LocationPermission.deniedForever ||
        perm == LocationPermission.denied) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Permiso de ubicación denegado. '
              'Debes habilitarlo en ajustes para continuar.',
            ),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 4),
          ),
        );
      }
      return false;
    }
    final pos = await Geolocator.getCurrentPosition();
    setState(() {
      _lat = pos.latitude;
      _lng = pos.longitude;
    });
    return true;
  }

  // ── Cámara + Blur ──────────────────────────────────────────────────────────

  Future<void> _tomarFoto() async {
    // 1. GPS primero
    final gpsOk = await _obtenerGPS();
    if (!gpsOk) return;

    // 2. Cámara
    final picker = ImagePicker();
    final picked = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
    );
    if (picked == null) return;

    final file = File(picked.path);
    final bytes = await file.readAsBytes();
    final decoded = img.decodeImage(bytes);

    if (decoded == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No se pudo procesar la imagen.')),
        );
      }
      return;
    }

    // 3. Validación de nitidez con varianza del Laplaciano
    final blurScore = _laplacianVariance(decoded);
    if (blurScore < 120) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Imagen borrosa (nitidez: ${blurScore.toStringAsFixed(1)}). '
              'Por favor, toma la foto de nuevo.',
            ),
            backgroundColor: Colors.orange,
            duration: const Duration(seconds: 4),
          ),
        );
      }
      return;
    }

    setState(() => _foto = file);
  }

  /// Varianza del Laplaciano: mide bordes de alta frecuencia.
  /// Valor bajo → imagen borrosa. Umbral recomendado: 120.
  double _laplacianVariance(img.Image image) {
    final gray = img.grayscale(image);
    final pixels = <double>[];

    for (int y = 1; y < gray.height - 1; y++) {
      for (int x = 1; x < gray.width - 1; x++) {
        final center = img.getLuminance(gray.getPixel(x, y));
        final top = img.getLuminance(gray.getPixel(x, y - 1));
        final bottom = img.getLuminance(gray.getPixel(x, y + 1));
        final left = img.getLuminance(gray.getPixel(x - 1, y));
        final right = img.getLuminance(gray.getPixel(x + 1, y));
        final lap = (4 * center - top - bottom - left - right).abs().toDouble();
        pixels.add(lap);
      }
    }

    final mean = pixels.reduce((a, b) => a + b) / pixels.length;
    final variance =
        pixels.map((p) => pow(p - mean, 2)).reduce((a, b) => a + b) /
            pixels.length;
    return variance.toDouble();
  }

  // ── Subir foto ─────────────────────────────────────────────────────────────

  Future<String> _uploadFoto(File foto) async {
    final svc = context.read<AppwriteService>();
    final file = await svc.storage.createFile(
      bucketId: AppwriteService.actasFotosBucketId,
      fileId: ID.unique(),
      file: InputFile.fromPath(path: foto.path),
    );
    return file.$id;
  }

  // ── Validación y guardado ──────────────────────────────────────────────────

  Future<void> _guardar() async {
    if (!_formKey.currentState!.validate()) return;

    if (_foto == null && _fotoFileId == null) {
      setState(() => _error = 'Debes fotografiar el acta antes de guardar.');
      return;
    }

    final sufragantes = int.tryParse(_sufragantesCtrl.text) ?? 0;
    final nulos = int.tryParse(_nulosCtrl.text) ?? 0;
    final blanco = int.tryParse(_blancoCtrl.text) ?? 0;

    final votos = _orgs.map((o) {
      final v = int.tryParse(_votosCtrls[o.id]?.text ?? '0') ?? 0;
      return VotoCandidato(
          candidato: o.candidato, partido: o.nombre, votos: v);
    }).toList();

    final totalCalculado =
        votos.fold(0, (s, v) => s + v.votos) + nulos + blanco;

    if (totalCalculado != sufragantes) {
      setState(() => _error =
          'Los votos no coinciden con el total de sufragantes. '
          'Total calculado: $totalCalculado');
      return;
    }

    setState(() {
      _guardando = true;
      _error = null;
    });

    try {
      String fileId = _fotoFileId ?? '';
      if (_foto != null) {
        fileId = await _uploadFoto(_foto!);
      }

      final authUserId =
          context.read<AuthController>().usuario?.authUserId ?? '';

      final acta = ActaEscrutinio(
        id: widget.actaExistente?.id ?? '',
        mesaId: widget.mesa.id,
        dignidad: widget.dignidad,
        totalSufragantes: sufragantes,
        votosNulos: nulos,
        votosEnBlanco: blanco,
        votosPorOrganizacion: votos,
        fotoFileId: fileId,
        estado: widget.actaExistente == null ? 'enviada' : 'corregida',
        registradoPor: authUserId,
        gpsLat: _lat,
        gpsLng: _lng,
      );

      final ec = context.read<ElectoralController>();
      final ok = await ec.saveActa(acta);

      if (!mounted) return;

      if (ok) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Acta guardada exitosamente'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pop(context);
      } else {
        setState(() => _error = ec.errorMessage);
      }
    } catch (e) {
      setState(() => _error = 'Error: $e');
    } finally {
      if (mounted) setState(() => _guardando = false);
    }
  }

  // ── UI ─────────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final titulo = widget.dignidad == 'alcalde'
        ? 'Acta de Alcalde'
        : 'Acta de Prefecto';

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titulo),
            Text('Mesa ${widget.mesa.numero}',
                style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
      body: _loadingOrgs
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  // ── Totales ────────────────────────────────────────────
                  _sectionTitle('Datos del acta'),
                  const SizedBox(height: 12),
                  _numField(_sufragantesCtrl, 'Total de sufragantes'),
                  const SizedBox(height: 12),
                  _numField(_nulosCtrl, 'Votos nulos'),
                  const SizedBox(height: 12),
                  _numField(_blancoCtrl, 'Votos en blanco'),
                  const SizedBox(height: 24),

                  // ── Votos por organización ─────────────────────────────
                  _sectionTitle('Votos por organización política'),
                  const SizedBox(height: 12),
                  ..._orgs.map((o) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _numField(
                          _votosCtrls[o.id]!,
                          '${o.nombre} — ${o.candidato}',
                        ),
                      )),

                  // ── Error de validación ────────────────────────────────
                  if (_error != null) ...[
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.red.shade200),
                      ),
                      child: Text(_error!,
                          style: const TextStyle(color: Colors.red)),
                    ),
                    const SizedBox(height: 16),
                  ],

                  // ── GPS ────────────────────────────────────────────────
                  if (_lat != null)
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.location_on,
                              color: Colors.green, size: 18),
                          const SizedBox(width: 6),
                          Text(
                            'GPS: ${_lat!.toStringAsFixed(5)}, '
                            '${_lng!.toStringAsFixed(5)}',
                            style: const TextStyle(
                                fontSize: 12, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 16),

                  // ── Foto ───────────────────────────────────────────────
                  _sectionTitle('Fotografía del acta'),
                  const SizedBox(height: 12),
                  if (_foto != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.file(_foto!,
                          height: 200, fit: BoxFit.cover),
                    )
                  else if (_fotoFileId != null)
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check_circle, color: Colors.green),
                            SizedBox(width: 8),
                            Text('Foto cargada previamente'),
                          ],
                        ),
                      ),
                    )
                  else
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: const Center(
                        child: Text('Sin foto',
                            style: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  const SizedBox(height: 12),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Fotografiar acta'),
                    onPressed: _tomarFoto,
                  ),
                  const SizedBox(height: 24),

                  // ── Guardar ────────────────────────────────────────────
                  FilledButton(
                    onPressed: _guardando ? null : _guardar,
                    style: FilledButton.styleFrom(
                        padding:
                            const EdgeInsets.symmetric(vertical: 16)),
                    child: _guardando
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white),
                          )
                        : const Text('Guardar acta',
                            style: TextStyle(fontSize: 16)),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
    );
  }

  Widget _sectionTitle(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold),
      );

  Widget _numField(TextEditingController ctrl, String label) =>
      TextFormField(
        controller: ctrl,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
            labelText: label, border: const OutlineInputBorder()),
        validator: (v) {
          if (v == null || v.isEmpty) return 'Requerido';
          if (int.tryParse(v) == null) return 'Número inválido';
          return null;
        },
      );
}