import 'package:appwrite/appwrite.dart';

class AppwriteClient {
  static final Client client = Client()
    ..setEndpoint('https://fra.cloud.appwrite.io/v1')
    ..setProject('6a3d497700308cb1890e');
}