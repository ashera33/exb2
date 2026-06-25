import 'usuario.dart';

abstract class AuthRepository {
  /// Inicia sesión con cédula + password.
  /// Internamente convierte la cédula a un email ficticio para Appwrite Auth.
  Future<Usuario> login(String cedula, String password);

  Future<void> logout();

  /// Obliga a cambiar la password en el primer login.
  Future<void> cambiarPassword(String passwordActual, String passwordNueva);

  /// Envía el correo de recuperación usando el mecanismo nativo de Appwrite.
  Future<void> recuperarPassword(String email);

  /// Usuario actualmente logueado (null si no hay sesión activa).
  Future<Usuario?> usuarioActual();
}