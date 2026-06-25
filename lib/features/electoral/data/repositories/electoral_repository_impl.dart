import 'package:appwrite/appwrite.dart';

import '../../../../core/appwrite_service.dart';
import '../../domain/entities/acta_escrutinio.dart';
import '../../domain/entities/mesa_electoral.dart';
import '../../domain/repositories/electoral_repository.dart';

class ElectoralRepositoryImpl implements ElectoralRepository {
  final AppwriteService _appwriteService;

  ElectoralRepositoryImpl(this._appwriteService);

  @override
  Future<List<MesaElectoral>> getMesas() async {
    final result = await _appwriteService.databases.listDocuments(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.mesasCollectionId,
    );

    return result.documents.map((doc) => MesaElectoral(
      id: doc.$id,
      numero: doc.data['numero'] ?? '',
      recinto: doc.data['recinto'] ?? '',
      municipio: doc.data['municipio'] ?? '',
      departamento: doc.data['departamento'] ?? '',
      totalHabilitados: doc.data['total_habilitados'] ?? 0,
      estado: doc.data['estado'] ?? 'activa',
    )).toList();
  }

  @override
  Future<void> saveActa(ActaEscrutinio acta) async {
    await _appwriteService.databases.createDocument(
      databaseId: AppwriteService.databaseId,
      collectionId: AppwriteService.actasCollectionId,
      documentId: ID.unique(),
      data: {
        'mesa_id': acta.mesaId,
        'mesa_numero': acta.mesaNumero,
        'votos_emitidos': acta.votosEmitidos,
        'votos_nulos': acta.votosNulos,
        'votos_en_blanco': acta.votosEnBlanco,
        'foto_file_id': acta.fotoFileId,
        'estado': acta.estado,
        'votos_candidatos': acta.votosPorCandidato
            .map((v) => {
                  'candidato': v.candidato,
                  'partido': v.partido,
                  'votos': v.votos,
                })
            .toList(),
      },
    );
  }
}
