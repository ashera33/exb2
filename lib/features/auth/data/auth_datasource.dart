import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import '../../../../core/appwrite_client.dart';

class AuthDatasource {
  final Account account = Account(AppwriteClient.client);

  Future<void> login(String email, String password) async {
    await account.createEmailPasswordSession(
      email: email,
      password: password,
    );
  }

  Future<void> logout() async {
    await account.deleteSession(sessionId: 'current');
  }

  Future<models.User> getUser() async {
    return await account.get();
  }
}