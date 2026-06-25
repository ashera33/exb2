import 'dart:convert';
import 'voto_candidato.dart';

class ActaEscrutinio {
  final String id;
  final String mesaId;
  final String dignidad; // 'alcalde' | 'prefecto'
  final int totalSufragantes;
  final int votosNulos;
  final int votosEnBlanco;
  final List<VotoCandidato> votosPorOrganizacion;
  final String fotoFileId;
  final String estado; // 'borrador' | 'enviada' | 'corregida'
  final String registradoPor; // auth_user_id de quien la registró
  final double? gpsLat;
  final double? gpsLng;
  final DateTime? creadaEn;

  const ActaEscrutinio({
    required this.id,
    required this.mesaId,
    required this.dignidad,
    required this.totalSufragantes,
    required this.votosNulos,
    required this.votosEnBlanco,
    required this.votosPorOrganizacion,
    required this.fotoFileId,
    required this.registradoPor,
    this.estado = 'borrador',
    this.gpsLat,
    this.gpsLng,
    this.creadaEn,
  });

  /// Alias de compatibilidad con el código de UI ya escrito
  /// (usaba votosEmitidos / latitud / longitud).
  int get votosEmitidos => totalSufragantes;
  double? get latitud => gpsLat;
  double? get longitud => gpsLng;

  int get totalVotosCalculado =>
      votosPorOrganizacion.fold(0, (s, v) => s + v.votos) +
      votosNulos +
      votosEnBlanco;

  bool get totalCoincide => totalVotosCalculado == totalSufragantes;

  factory ActaEscrutinio.fromMap(Map<String, dynamic> map) {
    final rawVotos = (map['votos_por_organizacion'] as List<dynamic>? ?? []);
    return ActaEscrutinio(
      id: map['\$id'] ?? '',
      mesaId: map['mesa_id'] ?? '',
      dignidad: map['dignidad'] ?? 'alcalde',
      totalSufragantes: map['total_sufragantes'] ?? 0,
      votosNulos: map['votos_nulos'] ?? 0,
      votosEnBlanco: map['votos_en_blanco'] ?? 0,
      fotoFileId: map['foto_file_id'] ?? '',
      estado: map['estado'] ?? 'borrador',
      registradoPor: map['registrado_por'] ?? '',
      gpsLat: (map['gps_lat'] as num?)?.toDouble(),
      gpsLng: (map['gps_lng'] as num?)?.toDouble(),
      votosPorOrganizacion: rawVotos
          .map((s) => VotoCandidato.fromMap(
              jsonDecode(s as String) as Map<String, dynamic>))
          .toList(),
      creadaEn: map['\$createdAt'] != null
          ? DateTime.tryParse(map['\$createdAt'])
          : null,
    );
  }

  /// La columna `votos_por_organizacion` es un array de strings (size 200),
  /// no de objetos. Cada voto se serializa a JSON.
  Map<String, dynamic> toMap() => {
        'mesa_id': mesaId,
        'dignidad': dignidad,
        'total_sufragantes': totalSufragantes,
        'votos_nulos': votosNulos,
        'votos_en_blanco': votosEnBlanco,
        'foto_file_id': fotoFileId,
        'estado': estado,
        'registrado_por': registradoPor,
        'gps_lat': gpsLat,
        'gps_lng': gpsLng,
        'votos_por_organizacion':
            votosPorOrganizacion.map((v) => jsonEncode(v.toMap())).toList(),
      };
}