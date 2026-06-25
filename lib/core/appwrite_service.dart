import 'package:appwrite/appwrite.dart';
import 'appwrite_client.dart';

class AppwriteService {
  final Databases databases;
  final Storage storage;
  final Account account;

  static const String databaseId = '6a3d497700308cb1890e';
  static const String mesasCollectionId = 'actas';
  static const String actasCollectionId = 'mesas';
  static const String veedoresCollectionId = 'veedores_electorales';
  static const String bucketId = '6a3d52810008f4bb6f83';

  AppwriteService()
      : databases = Databases(AppwriteClient.client),
        storage = Storage(AppwriteClient.client),
        account = Account(AppwriteClient.client);
}
