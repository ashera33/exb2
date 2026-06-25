import 'package:appwrite/appwrite.dart';
import 'appwrite_client.dart';
import 'appwrite_constants.dart';

/// Punto único de acceso a los servicios de Appwrite.
/// Todas las features (auth, electoral, etc.) inyectan/usan ESTA clase.
/// Ya no debe existir ningún otro `AppwriteDatasource` con IDs propios.
class AppwriteService {
  final Databases databases;
  final Storage storage;
  final Account account;

  AppwriteService()
      : databases = Databases(AppwriteClient.client),
        storage = Storage(AppwriteClient.client),
        account = Account(AppwriteClient.client);

  // Re-exportamos los IDs aquí para que el resto del código no tenga
  // que importar AppwriteConstants directamente en cada archivo.
  static const String databaseId = AppwriteConstants.databaseId;
  static const String usuariosCollectionId =
      AppwriteConstants.usuariosCollectionId;
  static const String recintosCollectionId =
      AppwriteConstants.recintosCollectionId;
  static const String mesasCollectionId = AppwriteConstants.mesasCollectionId;
  static const String actasCollectionId = AppwriteConstants.actasCollectionId;
  static const String organizacionesCollectionId =
      AppwriteConstants.organizacionesCollectionId;
  static const String actasFotosBucketId =
      AppwriteConstants.actasFotosBucketId;
}