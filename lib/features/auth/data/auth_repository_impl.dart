import '../domain/auth_repository.dart';
import 'auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl(this.datasource);

  @override
  Future<void> login(String email, String password) {
    return datasource.login(email, password);
  }

  @override
  Future<void> logout() {
    return datasource.logout();
  }
}