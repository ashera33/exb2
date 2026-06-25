import 'package:flutter/foundation.dart';
import '../../domain/entities/acta_escrutinio.dart';
import '../../domain/entities/mesa_electoral.dart';
import '../../domain/entities/recinto.dart';
import '../../domain/repositories/electoral_repository.dart';
import '../../../auth/domain/usuario.dart';

enum OpStatus { idle, loading, success, error }

class ElectoralController extends ChangeNotifier {
  final ElectoralRepository _repo;

  ElectoralController(this._repo);

  // ── Estado ─────────────────────────────────────────────────────────────────
  OpStatus status = OpStatus.idle;
  String? errorMessage;

  List<MesaElectoral> mesas = [];
  List<Recinto> recintos = [];
  List<OrganizacionPolitica> orgAlcalde = [];
  List<OrganizacionPolitica> orgPrefecto = [];
  List<ActaEscrutinio> actasMesa = [];
  List<Usuario> usuarios = [];

  /// recintoId -> cantidad de mesas. Se llena con cargarConteoMesas().
  Map<String, int> conteoMesasPorRecinto = {};

  // ── Helpers ────────────────────────────────────────────────────────────────

  void _setLoading() {
    status = OpStatus.loading;
    errorMessage = null;
    notifyListeners();
  }

  void _setError(Object e) {
    status = OpStatus.error;
    errorMessage = e.toString();
    notifyListeners();
  }

  void _setSuccess() {
    status = OpStatus.success;
    notifyListeners();
  }

  // ── Mesas ──────────────────────────────────────────────────────────────────

  Future<void> loadMesasByRecinto(String recintoId) async {
    _setLoading();
    try {
      mesas = await _repo.getMesasByRecinto(recintoId);
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  Future<void> loadMesasByVeedor(String authUserId) async {
    _setLoading();
    try {
      mesas = await _repo.getMesasByVeedor(authUserId);
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  Future<bool> createMesa({
    required String recintoId,
    required String numeroJrv,
    required String departamento,
    required int totalHabilitados,
  }) async {
    _setLoading();
    try {
      final m = await _repo.createMesa(
        recintoId: recintoId,
        numeroJrv: numeroJrv,
        departamento: departamento,
        totalHabilitados: totalHabilitados,
      );
      mesas = [...mesas, m];
      _setSuccess();
      return true;
    } catch (e) {
      _setError(e);
      return false;
    }
  }

  // ── Recintos ───────────────────────────────────────────────────────────────

  Future<void> loadRecintos() async {
    _setLoading();
    try {
      recintos = await _repo.getRecintos();
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  Future<bool> createRecinto({
    required String canton,
    required String parroquia,
    required String nombre,
  }) async {
    _setLoading();
    try {
      final r = await _repo.createRecinto(
        canton: canton,
        parroquia: parroquia,
        nombre: nombre,
      );
      recintos = [...recintos, r];
      _setSuccess();
      return true;
    } catch (e) {
      _setError(e);
      return false;
    }
  }

  /// La tabla `recintos` no guarda cuántas mesas tiene; se cuenta consultando
  /// `mesas` por cada recinto. Se llama después de loadRecintos().
  Future<void> cargarConteoMesas() async {
    final nuevo = <String, int>{};
    for (final r in recintos) {
      nuevo[r.id] = await _repo.contarMesasPorRecinto(r.id);
    }
    conteoMesasPorRecinto = nuevo;
    notifyListeners();
  }

  // ── Actas ──────────────────────────────────────────────────────────────────

  Future<void> loadActasByMesa(String mesaId) async {
    _setLoading();
    try {
      actasMesa = await _repo.getActasByMesa(mesaId);
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  Future<bool> saveActa(ActaEscrutinio acta) async {
    _setLoading();
    try {
      if (acta.id.isEmpty) {
        await _repo.saveActa(acta);
      } else {
        await _repo.updateActa(acta);
      }
      _setSuccess();
      return true;
    } catch (e) {
      _setError(e);
      return false;
    }
  }

  // ── Organizaciones ─────────────────────────────────────────────────────────

  Future<void> loadOrganizaciones() async {
    _setLoading();
    try {
      orgAlcalde = await _repo.getOrganizaciones('alcalde');
      orgPrefecto = await _repo.getOrganizaciones('prefecto');
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  // ── Usuarios ───────────────────────────────────────────────────────────────

  Future<bool> createUsuario({
    required String cedula,
    required String nombres,
    required String apellidos,
    required String telefono,
    required String email,
    required RolUsuario rol,
    String? recintoId,
  }) async {
    _setLoading();
    try {
      final u = await _repo.createUsuario(
        cedula: cedula,
        nombres: nombres,
        apellidos: apellidos,
        telefono: telefono,
        email: email,
        rol: rol,
        recintoId: recintoId,
      );
      usuarios = [...usuarios, u];
      _setSuccess();
      return true;
    } catch (e) {
      _setError(e);
      return false;
    }
  }

  Future<void> loadVeedores(String recintoId) async {
    _setLoading();
    try {
      usuarios = await _repo.getVeedoresByRecinto(recintoId);
      _setSuccess();
    } catch (e) {
      _setError(e);
    }
  }

  Future<bool> asignarVeedor(String authUserId, String mesaId) async {
    _setLoading();
    try {
      await _repo.asignarVeedorAMesa(authUserId, mesaId);
      _setSuccess();
      return true;
    } catch (e) {
      _setError(e);
      return false;
    }
  }
}