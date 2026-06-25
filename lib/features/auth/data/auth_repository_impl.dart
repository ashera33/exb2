import '../domain/auth_repository.dart';
import '../domain/usuario.dart';
import 'auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl(this.datasource);

  @override
  Future<Usuario> login(String cedula, String password) {
    return datasource.login(cedula, password);
  }

  @override
  Future<void> logout() {
    return datasource.logout();
  }

  @override
  Future<void> cambiarPassword(String passwordActual, String passwordNueva) {
    return datasource.cambiarPassword(passwordActual, passwordNueva);
  }

  @override
  Future<void> recuperarPassword(String email) {
    return datasource.recuperarPassword(email);
  }

  @override
  Future<Usuario?> usuarioActual() {
    return datasource.usuarioActual();
  }
}