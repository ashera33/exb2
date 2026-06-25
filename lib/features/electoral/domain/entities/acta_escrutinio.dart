import 'voto_candidato.dart';
class ActaEscrutinio {
  final String id;
  final String mesaId;
  final String mesaNumero;
  final int votosEmitidos;
  final int votosNulos;
  final int votosEnBlanco;
  final List<VotoCandidato> votosPorCandidato;
  final String? fotoFileId;
  final String estado;
  final DateTime? creadaEn;

  const ActaEscrutinio({
    required this.id,
    required this.mesaId,
    required this.mesaNumero,
    required this.votosEmitidos,
    required this.votosNulos,
    required this.votosEnBlanco,
    required this.votosPorCandidato,
    this.fotoFileId,
    this.estado = 'borrador',
    this.creadaEn,
  });
}