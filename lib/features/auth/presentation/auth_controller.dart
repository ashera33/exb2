import 'package:flutter/foundation.dart';
import '../domain/auth_repository.dart';
import '../domain/usuario.dart';

enum AuthStatus { idle, loading, success, error }

/// Maneja el estado de login y expone explícitamente loading/success/error
/// para que la UI nunca se quede "en blanco" sin feedback.
class AuthController extends ChangeNotifier {
  final AuthRepository repository;

  AuthController(this.repository);

  AuthStatus status = AuthStatus.idle;
  String? errorMessage;
  Usuario? usuario;

  Future<bool> login(String cedula, String password) async {
    status = AuthStatus.loading;
    errorMessage = null;
    notifyListeners();

    try {
      usuario = await repository.login(cedula, password);
      status = AuthStatus.success;
      notifyListeners();
      return true;
    } catch (e) {
      status = AuthStatus.error;
      errorMessage = _mensajeAmigable(e);
      notifyListeners();
      return false;
    }
  }

  Future<bool> cambiarPassword(String actual, String nueva) async {
    status = AuthStatus.loading;
    errorMessage = null;
    notifyListeners();

    try {
      await repository.cambiarPassword(actual, nueva);
      // Refrescamos el usuario para que debeCambiarPassword quede en false
      usuario = await repository.usuarioActual();
      status = AuthStatus.success;
      notifyListeners();
      return true;
    } catch (e) {
      status = AuthStatus.error;
      errorMessage = _mensajeAmigable(e);
      notifyListeners();
      return false;
    }
  }

  Future<void> logout() async {
    await repository.logout();
    usuario = null;
    status = AuthStatus.idle;
    notifyListeners();
  }

  String _mensajeAmigable(Object e) {
    final msg = e.toString();
    if (msg.contains('Invalid credentials')) {
      return 'Cédula o contraseña incorrectas.';
    }
    if (msg.contains('SocketException') || msg.contains('Connection')) {
      return 'Sin conexión a internet. Verifica tu red e intenta de nuevo.';
    }
    return 'Ocurrió un error. Intenta de nuevo.';
  }
}