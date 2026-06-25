import 'package:appwrite/appwrite.dart';
import '../../../core/appwrite_constants.dart';
import '../../../core/appwrite_service.dart';
import '../domain/usuario.dart';

class AuthDatasource {
  final AppwriteService appwrite;

  AuthDatasource(this.appwrite);

  String _emailDesdeCedula(String cedula) =>
      '$cedula${AppwriteConstants.emailDomain}';

  Future<Usuario> login(String cedula, String password) async {
    final email = _emailDesdeCedula(cedula);

    // 1. Crear sesión en Appwrite Auth
    await appwrite.account.createEmailPasswordSession(
      email: email,
      password: password,
    );

    // 2. Obtener el usuario de Auth recién logueado
    final authUser = await appwrite.account.get();

    // 3. Buscar su perfil extendido en la colección 'usuarios'
    final result = await appwrite.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      queries: [Query.equal('auth_user_id', authUser.$id)],
    );

    if (result.documents.isEmpty) {
      // Si esto pasa, el usuario existe en Auth pero no tiene perfil en
      // 'usuarios' -> error de datos, no de credenciales.
      throw Exception(
        'No se encontró un perfil para este usuario. Contacta al administrador.',
      );
    }

    return Usuario.fromMap(result.documents.first.data);
  }

  Future<void> logout() async {
    await appwrite.account.deleteSession(sessionId: 'current');
  }

  Future<void> cambiarPassword(
    String passwordActual,
    String passwordNueva,
  ) async {
    // Cambia la password en Appwrite Auth
    await appwrite.account.updatePassword(
      password: passwordNueva,
      oldPassword: passwordActual,
    );

    // Marca debe_cambiar_password = false en el documento del usuario
    final authUser = await appwrite.account.get();

    final result = await appwrite.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      queries: [Query.equal('auth_user_id', authUser.$id)],
    );

    if (result.documents.isNotEmpty) {
      await appwrite.databases.updateDocument(
        databaseId: AppwriteService.databaseId,
        collectionId: AppwriteService.usuariosCollectionId,
        documentId: result.documents.first.$id,
        data: {'debe_cambiar_password': false},
      );
    }
  }

  Future<void> recuperarPassword(String email) async {
    // URL a la que Appwrite redirige tras el click en el correo.
    // Debe ser una página/deeplink que tu app maneje para capturar el token.
    await appwrite.account.createRecovery(
      email: email,
      url: 'https://tuapp.com/reset-password', // TODO: ajustar a tu deeplink real
    );
  }

  Future<Usuario?> usuarioActual() async {
    try {
      final authUser = await appwrite.account.get();

      final result = await appwrite.databases.listDocuments(
        databaseId: AppwriteService.databaseId,
        collectionId: AppwriteService.usuariosCollectionId,
        queries: [Query.equal('auth_user_id', authUser.$id)],
      );

      if (result.documents.isEmpty) return null;

      return Usuario.fromMap(result.documents.first.data);
    } catch (_) {
      // No hay sesión activa
      return null;
    }
  }
}