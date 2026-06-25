import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_controller.dart';

class CambiarPasswordScreen extends StatefulWidget {
  const CambiarPasswordScreen({super.key});

  @override
  State<CambiarPasswordScreen> createState() => _CambiarPasswordScreenState();
}

class _CambiarPasswordScreenState extends State<CambiarPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final actualCtrl = TextEditingController();
  final nuevaCtrl = TextEditingController();
  final confirmarCtrl = TextEditingController();

  @override
  void dispose() {
    actualCtrl.dispose();
    nuevaCtrl.dispose();
    confirmarCtrl.dispose();
    super.dispose();
  }

  Future<void> _onGuardar(AuthController controller) async {
    if (!_formKey.currentState!.validate()) return;

    final ok = await controller.cambiarPassword(
      actualCtrl.text.trim(),
      nuevaCtrl.text.trim(),
    );

    if (!mounted || !ok) return;

    final usuario = controller.usuario!;
    switch (usuario.rol.toApiString()) {
      case 'provincial':
        Navigator.pushReplacementNamed(context, '/provincial');
        break;
      case 'coordinador_recinto':
        Navigator.pushReplacementNamed(context, '/coordinador');
        break;
      case 'veedor':
        Navigator.pushReplacementNamed(context, '/veedor');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambia tu contraseña'),
        automaticallyImplyLeading: false, // no puede regresar al login
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Consumer<AuthController>(
              builder: (context, controller, _) {
                final loading = controller.status == AuthStatus.loading;

                return Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Por seguridad, debes cambiar tu contraseña '
                        'temporal antes de continuar.',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(height: 24),

                      TextFormField(
                        controller: actualCtrl,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Contraseña actual (Ecuador2026)',
                          border: OutlineInputBorder(),
                        ),
                        validator: (v) =>
                            (v == null || v.isEmpty) ? 'Requerido' : null,
                      ),
                      const SizedBox(height: 16),

                      TextFormField(
                        controller: nuevaCtrl,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Nueva contraseña',
                          border: OutlineInputBorder(),
                        ),
                        validator: (v) {
                          if (v == null || v.length < 8) {
                            return 'Mínimo 8 caracteres';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      TextFormField(
                        controller: confirmarCtrl,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Confirmar nueva contraseña',
                          border: OutlineInputBorder(),
                        ),
                        validator: (v) {
                          if (v != nuevaCtrl.text) {
                            return 'Las contraseñas no coinciden';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),

                      if (controller.status == AuthStatus.error) ...[
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            controller.errorMessage ?? 'Error',
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],

                      ElevatedButton(
                        onPressed:
                            loading ? null : () => _onGuardar(controller),
                        child: loading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : const Text('Guardar y continuar'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}