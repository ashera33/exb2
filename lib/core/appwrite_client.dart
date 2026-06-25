import 'package:appwrite/appwrite.dart';
import 'appwrite_constants.dart';

/// Instancia única del Client de Appwrite para toda la app.
/// Nadie más debe crear un `Client()` en otro archivo.
class AppwriteClient {
  AppwriteClient._();

  static final Client client = Client()
    ..setEndpoint(AppwriteConstants.endpoint)
    ..setProject(AppwriteConstants.projectId)
    ..setSelfSigned(status: true); // quítalo si usas certificado válido en producción
}