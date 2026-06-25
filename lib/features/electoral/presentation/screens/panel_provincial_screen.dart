import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../auth/presentation/auth_controller.dart';
import '../controllers/electoral_controller.dart';
import '../../../auth/domain/usuario.dart';

class PanelProvincialScreen extends StatefulWidget {
  const PanelProvincialScreen({super.key});

  @override
  State<PanelProvincialScreen> createState() => _PanelProvincialScreenState();
}

class _PanelProvincialScreenState extends State<PanelProvincialScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final ec = context.read<ElectoralController>();
      await ec.loadRecintos();
      await ec.cargarConteoMesas();
    });
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel Provincial'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await auth.logout();
              if (mounted) Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabs,
          tabs: const [
            Tab(icon: Icon(Icons.location_city), text: 'Recintos'),
            Tab(icon: Icon(Icons.people), text: 'Coordinadores'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabs,
        children: const [
          _RecintosTab(),
          _CoordinadoresTab(),
        ],
      ),
      floatingActionButton: Consumer<ElectoralController>(
        builder: (ctx, ec, _) {
          return FloatingActionButton.extended(
            onPressed: () => _tabs.index == 0
                ? _showCrearRecinto(context, ec)
                : _showCrearCoordinador(context, ec),
            icon: const Icon(Icons.add),
            label: Text(_tabs.index == 0 ? 'Nuevo recinto' : 'Nuevo coordinador'),
          );
        },
      ),
    );
  }

  void _showCrearRecinto(BuildContext context, ElectoralController ec) {
    final cantonCtrl = TextEditingController();
    final parroquiaCtrl = TextEditingController();
    final nombreCtrl = TextEditingController();
    final formKey = GlobalKey<FormState>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => Padding(
        padding: EdgeInsets.only(
          left: 20, right: 20, top: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Nuevo Recinto',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              _field(cantonCtrl, 'Cantón'),
              const SizedBox(height: 12),
              _field(parroquiaCtrl, 'Parroquia'),
              const SizedBox(height: 12),
              _field(nombreCtrl, 'Nombre del recinto'),
              const SizedBox(height: 4),
              const Text(
                'Las mesas (JRV) de este recinto se crean por separado, '
                'cada una con su propio número de JRV.',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () async {
                  if (!formKey.currentState!.validate()) return;
                  Navigator.pop(context);
                  await ec.createRecinto(
                    canton: cantonCtrl.text.trim(),
                    parroquia: parroquiaCtrl.text.trim(),
                    nombre: nombreCtrl.text.trim(),
                  );
                  await ec.cargarConteoMesas();
                },
                child: const Text('Crear recinto'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCrearCoordinador(BuildContext context, ElectoralController ec) {
    showCrearUsuario(context, ec, RolUsuario.coordinadorRecinto);
  }

  Widget _field(TextEditingController ctrl, String label) => TextFormField(
        controller: ctrl,
        decoration:
            InputDecoration(labelText: label, border: const OutlineInputBorder()),
        validator: (v) => (v == null || v.isEmpty) ? 'Requerido' : null,
      );
}

void showCrearUsuario(
    BuildContext context, ElectoralController ec, RolUsuario rol,
    {String? recintoId}) {
  final cedulaCtrl = TextEditingController();
  final nombresCtrl = TextEditingController();
  final apellidosCtrl = TextEditingController();
  final telefonoCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String? recintoSeleccionado = recintoId;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (ctx) => StatefulBuilder(
      builder: (ctx, setS) => Padding(
        padding: EdgeInsets.only(
          left: 20, right: 20, top: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        ),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  rol == RolUsuario.coordinadorRecinto
                      ? 'Nuevo Coordinador de Recinto'
                      : 'Nuevo Veedor',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                _buildField(cedulaCtrl, 'Cédula',
                    type: TextInputType.number),
                const SizedBox(height: 10),
                _buildField(nombresCtrl, 'Nombres'),
                const SizedBox(height: 10),
                _buildField(apellidosCtrl, 'Apellidos'),
                const SizedBox(height: 10),
                _buildField(telefonoCtrl, 'Teléfono',
                    type: TextInputType.phone),
                const SizedBox(height: 10),
                _buildField(emailCtrl, 'Correo electrónico',
                    type: TextInputType.emailAddress),
                const SizedBox(height: 10),
                // Selector de recinto si es coordinador y no viene predefinido
                if (rol == RolUsuario.coordinadorRecinto && recintoId == null)
                  Consumer<ElectoralController>(
                    builder: (_, ec2, __) => DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                          labelText: 'Recinto asignado',
                          border: OutlineInputBorder()),
                      items: ec2.recintos
                          .map((r) => DropdownMenuItem(
                                value: r.id,
                                child: Text(r.nombre),
                              ))
                          .toList(),
                      onChanged: (v) => setS(() => recintoSeleccionado = v),
                      validator: (v) =>
                          v == null ? 'Selecciona un recinto' : null,
                    ),
                  ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () async {
                    if (!formKey.currentState!.validate()) return;
                    Navigator.pop(ctx);
                    await ec.createUsuario(
                      cedula: cedulaCtrl.text.trim(),
                      nombres: nombresCtrl.text.trim(),
                      apellidos: apellidosCtrl.text.trim(),
                      telefono: telefonoCtrl.text.trim(),
                      email: emailCtrl.text.trim(),
                      rol: rol,
                      recintoId: recintoSeleccionado,
                    );
                  },
                  child: const Text('Crear usuario'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _buildField(TextEditingController ctrl, String label,
    {TextInputType? type}) =>
    TextFormField(
      controller: ctrl,
      keyboardType: type,
      decoration: InputDecoration(
          labelText: label, border: const OutlineInputBorder()),
      validator: (v) => (v == null || v.isEmpty) ? 'Requerido' : null,
    );

// ── Tab Recintos ───────────────────────────────────────────────────────────

class _RecintosTab extends StatelessWidget {
  const _RecintosTab();

  @override
  Widget build(BuildContext context) {
    return Consumer<ElectoralController>(
      builder: (_, ec, __) {
        if (ec.status == OpStatus.loading && ec.recintos.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        if (ec.recintos.isEmpty) {
          return const Center(child: Text('Sin recintos registrados.'));
        }
        return RefreshIndicator(
          onRefresh: () async {
            await ec.loadRecintos();
            await ec.cargarConteoMesas();
          },
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: ec.recintos.length,
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemBuilder: (_, i) {
              final r = ec.recintos[i];
              final numMesas = ec.conteoMesasPorRecinto[r.id];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('${i + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  title: Text(r.nombre,
                      style:
                          const TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text(
                      '${r.parroquia}, ${r.canton}'
                      '${numMesas != null ? ' · $numMesas mesas' : ''}'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/recinto-detalle',
                    arguments: r,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

// ── Tab Coordinadores ──────────────────────────────────────────────────────

class _CoordinadoresTab extends StatelessWidget {
  const _CoordinadoresTab();

  @override
  Widget build(BuildContext context) {
    return Consumer<ElectoralController>(
      builder: (_, ec, __) {
        if (ec.status == OpStatus.loading && ec.usuarios.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        if (ec.usuarios.isEmpty) {
          return const Center(
              child: Text('Sin coordinadores registrados.'));
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: ec.usuarios.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, i) {
            final u = ec.usuarios[i];
            return Card(
              child: ListTile(
                leading: const CircleAvatar(
                    child: Icon(Icons.person)),
                title: Text(u.nombreCompleto),
                subtitle: Text('Cédula: ${u.cedula}'),
              ),
            );
          },
        );
      },
    );
  }
}