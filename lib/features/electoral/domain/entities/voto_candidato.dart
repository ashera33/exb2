class VotoCandidato {
  final String candidato;
  final String partido;
  final int votos;

  const VotoCandidato({
    required this.candidato,
    required this.partido,
    required this.votos,
  });

  factory VotoCandidato.fromMap(Map<String, dynamic> map) => VotoCandidato(
        candidato: map['candidato'] ?? '',
        partido: map['partido'] ?? '',
        votos: map['votos'] ?? 0,
      );

  Map<String, dynamic> toMap() => {
        'candidato': candidato,
        'partido': partido,
        'votos': votos,
      };
}