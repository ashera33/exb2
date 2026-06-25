import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../auth/presentation/auth_controller.dart';
import '../controllers/electoral_controller.dart';
import '../../../auth/domain/usuario.dart';
import 'panel_provincial_screen.dart' show showCrearUsuario;
import 'acta_form_screen.dart';

class PanelCoordinadorScreen extends StatefulWidget {
  const PanelCoordinadorScreen({super.key});

  @override
  State<PanelCoordinadorScreen> createState() =>
      _PanelCoordinadorScreenState();
}

class _PanelCoordinadorScreenState extends State<PanelCoordinadorScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final auth = context.read<AuthController>();
      final ec = context.read<ElectoralController>();
      final recintoId = auth.usuario?.recintoId ?? '';
      ec.loadMesasByRecinto(recintoId);
      ec.loadVeedores(recintoId);
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
        title: const Text('Panel Coordinador'),
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
            Tab(icon: Icon(Icons.table_chart), text: 'Mesas'),
            Tab(icon: Icon(Icons.people), text: 'Veedores'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabs,
        children: [
          _MesasCoordTab(recintoId: auth.usuario?.recintoId ?? ''),
          _VeedoresTab(recintoId: auth.usuario?.recintoId ?? ''),
        ],
      ),
      floatingActionButton: Consumer<ElectoralController>(
        builder: (ctx, ec, _) => FloatingActionButton.extended(
          onPressed: () {
            if (_tabs.index == 1) {
              showCrearUsuario(
                context, ec, RolUsuario.veedor,
                recintoId: auth.usuario?.recintoId,
              );
            }
          },
          icon: const Icon(Icons.add),
          label: Text(_tabs.index == 1 ? 'Nuevo veedor' : ''),
        ),
      ),
    );
  }
}

class _MesasCoordTab extends StatelessWidget {
  final String recintoId;
  const _MesasCoordTab({required this.recintoId});

  Color _colorEstado(String estado) {
    switch (estado) {
      case 'escrutada':
        return Colors.green;
      case 'cerrada':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ElectoralController>(
      builder: (_, ec, __) {
        if (ec.status == OpStatus.loading && ec.mesas.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        final total = ec.mesas.length;
        final conActa = ec.mesas
            .where((m) => m.estado == 'escrutada')
            .length;

        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _stat('Total', '$total'),
                  _stat('Con acta', '$conActa'),
                  _stat('Pendientes', '${total - conActa}'),
                ],
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => ec.loadMesasByRecinto(recintoId),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: ec.mesas.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (_, i) {
                    final m = ec.mesas[i];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: _colorEstado(m.estado),
                          child: Text(m.numero,
                              style: const TextStyle(color: Colors.white)),
                        ),
                        title: Text('Mesa ${m.numero}'),
                        subtitle: Text(m.estado.toUpperCase()),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                ActaFormScreen(mesa: m, puedeEditar: true),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _stat(String label, String value) => Column(
        children: [
          Text(value,
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold)),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      );
}

class _VeedoresTab extends StatelessWidget {
  final String recintoId;
  const _VeedoresTab({required this.recintoId});

  @override
  Widget build(BuildContext context) {
    return Consumer<ElectoralController>(
      builder: (_, ec, __) {
        if (ec.status == OpStatus.loading && ec.usuarios.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        if (ec.usuarios.isEmpty) {
          return const Center(child: Text('Sin veedores registrados.'));
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: ec.usuarios.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (_, i) {
            final u = ec.usuarios[i];
            return Card(
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text(u.nombreCompleto),
                subtitle: Text('Cédula: ${u.cedula}'),
                trailing: TextButton(
                  onPressed: () => _showAsignarMesa(context, ec, u),
                  child: const Text('Asignar mesa'),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _showAsignarMesa(
      BuildContext context, ElectoralController ec, Usuario veedor) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Asignar mesa a ${veedor.nombreCompleto}'),
        content: SizedBox(
          width: 300,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: ec.mesas.length,
            itemBuilder: (_, i) {
              final m = ec.mesas[i];
              return ListTile(
                title: Text('Mesa ${m.numero}'),
                subtitle: Text(m.estado),
                onTap: () async {
                  Navigator.pop(context);
                  await ec.asignarVeedor(veedor.authUserId, m.id);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              'Veedor asignado a mesa ${m.numero}')),
                    );
                  }
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
        ],
      ),
    );
  }
}