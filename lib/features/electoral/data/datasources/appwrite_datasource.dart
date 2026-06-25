import 'package:appwrite/appwrite.dart';

class AppwriteDatasource {
  final Client client = Client();
  late Databases db;
  late Storage storage;
  late Account account;

  final String databaseId = 'TU_DATABASE_ID';
  final String mesasCollection = 'TU_MESAS_COLLECTION_ID';
  final String actasCollection = 'TU_ACTAS_COLLECTION_ID';
  final String bucketId = 'actas_fotos';

  AppwriteDatasource() {
    client
        .setEndpoint('https://fra.cloud.appwrite.io/v1')
        .setProject('TU_PROJECT_ID');

    db = Databases(client);
    storage = Storage(client);
    account = Account(client);
  }

  // 📌 subir imagen
  Future<String> uploadImage(String filePath) async {
    final file = await storage.createFile(
      bucketId: bucketId,
      fileId: ID.unique(),
      file: InputFile.fromPath(path: filePath),
    );

    return file.$id;
  }

  // 📌 url imagen
  String getImageUrl(String fileId) {
    return 'https://fra.cloud.appwrite.io/v1/storage/buckets/$bucketId/files/$fileId/view?project=TU_PROJECT_ID';
  }

  // 📌 guardar acta
  Future<void> saveActa(Map<String, dynamic> data) async {
    await db.createDocument(
      databaseId: databaseId,
      collectionId: actasCollection,
      documentId: ID.unique(),
      data: data,
    );
  }

  // 📌 obtener mesas
  Future<List<Map<String, dynamic>>> getMesas() async {
    final res = await db.listDocuments(
      databaseId: databaseId,
      collectionId: mesasCollection,
    );

    return res.documents.map((e) => e.data).toList();
  }
}