import 'package:appwrite/appwrite.dart';
import '../../../../core/appwrite_service.dart';
import '../../../../core/appwrite_constants.dart';
import '../../../auth/domain/usuario.dart';
import '../../domain/entities/acta_escrutinio.dart';
import '../../domain/entities/mesa_electoral.dart';
import '../../domain/entities/recinto.dart';
import '../../domain/repositories/electoral_repository.dart';

class ElectoralRepositoryImpl implements ElectoralRepository {
  final AppwriteService _svc;

  ElectoralRepositoryImpl(this._svc);

  // ── Mesas ──────────────────────────────────────────────────────────────────

  @override
  Future<List<MesaElectoral>> getMesas() async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
    );
    return _attachRecintoNombre(result.documents.map(_mesaFromDoc).toList());
  }

  @override
  Future<List<MesaElectoral>> getMesasByRecinto(String recintoId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
      queries: [Query.equal('recinto_id', recintoId)],
    );
    return _attachRecintoNombre(result.documents.map(_mesaFromDoc).toList());
  }

  @override
  Future<List<MesaElectoral>> getMesasByVeedor(String authUserId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
      queries: [Query.equal('veedor_id', authUserId)],
    );
    return _attachRecintoNombre(result.documents.map(_mesaFromDoc).toList());
  }

  MesaElectoral _mesaFromDoc(doc) =>
      MesaElectoral.fromMap({...doc.data, '\$id': doc.$id});

  /// La tabla `mesas` solo guarda `recinto_id`, no el nombre. Como no hay
  /// tantos recintos, se cargan todos y se hace el join en memoria.
  Future<List<MesaElectoral>> _attachRecintoNombre(
      List<MesaElectoral> mesas) async {
    if (mesas.isEmpty) return mesas;
    final recintos = await getRecintos();
    final nombrePorId = {for (final r in recintos) r.id: r.nombre};
    return mesas
        .map((m) => m.copyWith(recintoNombre: nombrePorId[m.recintoId] ?? ''))
        .toList();
  }

  @override
  Future<MesaElectoral> createMesa({
    required String recintoId,
    required String numeroJrv,
    required String departamento,
    required int totalHabilitados,
  }) async {
    final doc = await _svc.databases.createDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
      documentId: ID.unique(),
      data: {
        'numero_jrv': numeroJrv,
        'recinto_id': recintoId,
        'departamento': departamento,
        'total_habilitados': totalHabilitados,
        'estado': 'pendiente',
      },
    );
    return _mesaFromDoc(doc);
  }

  @override
  Future<int> contarMesasPorRecinto(String recintoId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
      queries: [Query.equal('recinto_id', recintoId), Query.limit(1)],
    );
    return result.total;
  }

  // ── Recintos ───────────────────────────────────────────────────────────────

  @override
  Future<List<Recinto>> getRecintos() async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.recintosCollectionId,
    );
    return result.documents
        .map((doc) => Recinto.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  @override
  Future<Recinto> createRecinto({
    required String canton,
    required String parroquia,
    required String nombre,
  }) async {
    final doc = await _svc.databases.createDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.recintosCollectionId,
      documentId: ID.unique(),
      data: {
        'canton': canton,
        'parroquia': parroquia,
        'nombre': nombre,
      },
    );
    return Recinto.fromMap({...doc.data, '\$id': doc.$id});
  }

  // ── Actas ──────────────────────────────────────────────────────────────────

  @override
  Future<void> saveActa(ActaEscrutinio acta) async {
    await _svc.databases.createDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.actasCollectionId,
      documentId: ID.unique(),
      data: acta.toMap(),
    );
  }

  @override
  Future<void> updateActa(ActaEscrutinio acta) async {
    await _svc.databases.updateDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.actasCollectionId,
      documentId: acta.id,
      data: acta.toMap(),
    );
  }

  @override
  Future<List<ActaEscrutinio>> getActasByMesa(String mesaId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.actasCollectionId,
      queries: [Query.equal('mesa_id', mesaId)],
    );
    return result.documents
        .map((doc) => ActaEscrutinio.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  // ── Usuarios ───────────────────────────────────────────────────────────────

  @override
  Future<Usuario> createUsuario({
    required String cedula,
    required String nombres,
    required String apellidos,
    required String telefono,
    required String email,
    required RolUsuario rol,
    String? recintoId,
  }) async {
    const password = 'Ecuador2026';
    final fakeEmail = '$cedula${AppwriteConstants.emailDomain}';

    // 1. Crear en Appwrite Auth
    final authUser = await _svc.account.create(
      userId: ID.unique(),
      email: fakeEmail,
      password: password,
      name: '$nombres $apellidos',
    );

    // 2. Guardar perfil en colección usuarios
    final doc = await _svc.databases.createDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      documentId: ID.unique(),
      data: {
        'cedula': cedula,
        'nombres': nombres,
        'apellidos': apellidos,
        'telefono': telefono,
        'email': email,
        'rol': rol.toApiString(),
        'recinto_id': recintoId,
        'debe_cambiar_password': true,
        'auth_user_id': authUser.$id,
      },
    );

    return Usuario.fromMap({...doc.data, '\$id': doc.$id});
  }

  @override
  Future<List<Usuario>> getCoordinadoresByRecinto(String recintoId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      queries: [
        Query.equal('rol', 'coordinador_recinto'),
        Query.equal('recinto_id', recintoId),
      ],
    );
    return result.documents
        .map((doc) => Usuario.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  @override
  Future<List<Usuario>> getVeedoresByRecinto(String recintoId) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.usuariosCollectionId,
      queries: [
        Query.equal('rol', 'veedor'),
        Query.equal('recinto_id', recintoId),
      ],
    );
    return result.documents
        .map((doc) => Usuario.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  @override
  Future<void> asignarVeedorAMesa(String veedorAuthId, String mesaId) async {
    await _svc.databases.updateDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
      documentId: mesaId,
      data: {'veedor_id': veedorAuthId},
    );
  }

  // ── Organizaciones ─────────────────────────────────────────────────────────

  @override
  Future<List<OrganizacionPolitica>> getOrganizaciones(
      String dignidad) async {
    final result = await _svc.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.organizacionesCollectionId,
      queries: [Query.equal('dignidad', dignidad)],
    );
    return result.documents
        .map((doc) =>
            OrganizacionPolitica.fromMap({...doc.data, '\$id': doc.$id}))
        .toList();
  }

  // ── Storage ────────────────────────────────────────────────────────────────

  Future<String> uploadActaFoto(String filePath) async {
    final file = await _svc.storage.createFile(
      bucketId: AppwriteService.actasFotosBucketId,
      fileId: ID.unique(),
      file: InputFile.fromPath(path: filePath),
    );
    return file.$id;
  }
}