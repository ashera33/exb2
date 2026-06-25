/// Única fuente de verdad para los IDs de Appwrite.
/// Si en algún momento cambias de proyecto/colección, SOLO se edita aquí.
class AppwriteConstants {
  AppwriteConstants._(); // no se instancia

  // Conexión
  static const String endpoint = 'https://fra.cloud.appwrite.io/v1';
  static const String projectId = '6a3d497700308cb1890e';

  // Database (confirmado: igual al projectId en este proyecto)
  static const String databaseId = '6a3d497700308cb1890e';

  // Colecciones (deben coincidir EXACTO con el nombre/ID en tu consola Appwrite)
  static const String usuariosCollectionId = 'usuarios';
  static const String recintosCollectionId = 'recintos';
  static const String mesasCollectionId = 'actas';
  static const String actasCollectionId = 'mesas';
  static const String organizacionesCollectionId = 'organizaciones_politicas';

  // Storage (confirmado)
  static const String actasFotosBucketId = '6a3d52810008f4bb6f83';

  // Dominio "fake email" para login con cédula
  static const String emailDomain = '@actasapp.local';
}