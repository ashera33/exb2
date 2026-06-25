import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../auth/presentation/auth_controller.dart';
import '../controllers/electoral_controller.dart';
import 'acta_form_screen.dart';

class PanelVeedorScreen extends StatefulWidget {
  const PanelVeedorScreen({super.key});

  @override
  State<PanelVeedorScreen> createState() => _PanelVeedorScreenState();
}

class _PanelVeedorScreenState extends State<PanelVeedorScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final auth = context.read<AuthController>();
      context
          .read<ElectoralController>()
          .loadMesasByVeedor(auth.usuario?.authUserId ?? '');
    });
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthController>();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mis Mesas'),
            Text(
              auth.usuario?.nombreCompleto ?? '',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await auth.logout();
              if (mounted) Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: Consumer<ElectoralController>(
        builder: (_, ec, __) {
          if (ec.status == OpStatus.loading && ec.mesas.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (ec.status == OpStatus.error) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline,
                      size: 48, color: Colors.red),
                  const SizedBox(height: 8),
                  Text(ec.errorMessage ?? 'Error al cargar mesas'),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: () => ec.loadMesasByVeedor(
                        auth.usuario?.authUserId ?? ''),
                    child: const Text('Reintentar'),
                  ),
                ],
              ),
            );
          }

          if (ec.mesas.isEmpty) {
            return const Center(
              child: Text('No tienes mesas asignadas todavía.'),
            );
          }

          return RefreshIndicator(
            onRefresh: () => ec
                .loadMesasByVeedor(auth.usuario?.authUserId ?? ''),
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: ec.mesas.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (_, i) {
                final mesa = ec.mesas[i];
                return Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              child: Text(
                                mesa.numero,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mesa ${mesa.numero}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(mesa.recinto,
                                      style: TextStyle(
                                          color: Colors.grey[600])),
                                ],
                              ),
                            ),
                            _estadoChip(mesa.estado),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                icon: const Icon(Icons.how_to_vote),
                                label: const Text('Acta Alcalde'),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ActaFormScreen(
                                      mesa: mesa,
                                      dignidad: 'alcalde',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: OutlinedButton.icon(
                                icon: const Icon(Icons.how_to_vote),
                                label: const Text('Acta Prefecto'),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ActaFormScreen(
                                      mesa: mesa,
                                      dignidad: 'prefecto',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _estadoChip(String estado) {
    Color color;
    switch (estado) {
      case 'escrutada':
        color = Colors.green;
        break;
      case 'cerrada':
        color = Colors.orange;
        break;
      default:
        color = Colors.blue;
    }
    return Chip(
      label: Text(estado.toUpperCase(),
          style: const TextStyle(fontSize: 11, color: Colors.white)),
      backgroundColor: color,
      padding: EdgeInsets.zero,
    );
  }
}