import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../domain/auth_repository.dart';

enum _RecuperarStatus { idle, loading, success, error }

class RecuperarPasswordScreen extends StatefulWidget {
  const RecuperarPasswordScreen({super.key});

  @override
  State<RecuperarPasswordScreen> createState() =>
      _RecuperarPasswordScreenState();
}

class _RecuperarPasswordScreenState extends State<RecuperarPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailCtrl = TextEditingController();
  _RecuperarStatus status = _RecuperarStatus.idle;
  String? errorMessage;

  Future<void> _onEnviar() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      status = _RecuperarStatus.loading;
      errorMessage = null;
    });

    try {
      final repo = context.read<AuthRepository>();
      await repo.recuperarPassword(emailCtrl.text.trim());
      setState(() => status = _RecuperarStatus.success);
    } catch (e) {
      setState(() {
        status = _RecuperarStatus.error;
        errorMessage = 'No se pudo enviar el correo. Verifica el email e intenta de nuevo.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recuperar contraseña')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Ingresa el correo con el que se creó tu cuenta. '
                    'Te enviaremos un enlace para restablecer tu contraseña.',
                  ),
                  const SizedBox(height: 20),

                  TextFormField(
                    controller: emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Correo electrónico',
                      border: OutlineInputBorder(),
                    ),
                    validator: (v) {
                      if (v == null || !v.contains('@')) {
                        return 'Ingresa un correo válido';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  if (status == _RecuperarStatus.success)
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Correo enviado. Revisa tu bandeja de entrada.',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),

                  if (status == _RecuperarStatus.error)
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        errorMessage ?? 'Error',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),

                  const SizedBox(height: 12),

                  ElevatedButton(
                    onPressed:
                        status == _RecuperarStatus.loading ? null : _onEnviar,
                    child: status == _RecuperarStatus.loading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Text('Enviar enlace'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}