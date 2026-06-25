// ─── Mesa Electoral ───────────────────────────────────────────────────────────
class MesaElectoral {
  final String  id;
  final String  numero;
  final String  recinto;
  final String  municipio;
  final String  departamento;
  final int     totalHabilitados;
  final String  estado; // 'activa' | 'cerrada' | 'escrutada'

  const MesaElectoral({
    required this.id,
    required this.numero,
    required this.recinto,
    required this.municipio,
    required this.departamento,
    required this.totalHabilitados,
    this.estado = 'activa',
  });

  factory MesaElectoral.fromMap(Map<String, dynamic> map) => MesaElectoral(
    id:               map['\$id']            ?? '',
    numero:           map['numero']          ?? '',
    recinto:          map['recinto']         ?? '',
    municipio:        map['municipio']       ?? '',
    departamento:     map['departamento']    ?? '',
    totalHabilitados: map['total_habilitados'] ?? 0,
    estado:           map['estado']          ?? 'activa',
  );

  Map<String, dynamic> toMap() => {
    'numero':            numero,
    'recinto':           recinto,
    'municipio':         municipio,
    'departamento':      departamento,
    'total_habilitados': totalHabilitados,
    'estado':            estado,
  };
}

// ─── Acta de Escrutinio ───────────────────────────────────────────────────────
class ActaEscrutinio {
  final String  id;
  final String  mesaId;
  final String  mesaNumero;
  final int     votosEmitidos;
  final int     votosNulos;
  final int     votosEnBlanco;
  final List<VotoCandidato> votosPorCandidato;
  final String? fotoFileId;     // ID del archivo en Appwrite Storage
  final String  estado;         // 'borrador' | 'enviada' | 'validada'
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

  factory ActaEscrutinio.fromMap(Map<String, dynamic> map) => ActaEscrutinio(
    id:            map['\$id']           ?? '',
    mesaId:        map['mesa_id']        ?? '',
    mesaNumero:    map['mesa_numero']    ?? '',
    votosEmitidos: map['votos_emitidos'] ?? 0,
    votosNulos:    map['votos_nulos']    ?? 0,
    votosEnBlanco: map['votos_en_blanco'] ?? 0,
    fotoFileId:    map['foto_file_id'],
    estado:        map['estado']         ?? 'borrador',
    votosPorCandidato: (map['votos_candidatos'] as List<dynamic>? ?? [])
        .map((e) => VotoCandidato.fromMap(e as Map<String, dynamic>))
        .toList(),
    creadaEn: map['\$createdAt'] != null
        ? DateTime.tryParse(map['\$createdAt'])
        : null,
  );

  Map<String, dynamic> toMap() => {
    'mesa_id':         mesaId,
    'mesa_numero':     mesaNumero,
    'votos_emitidos':  votosEmitidos,
    'votos_nulos':     votosNulos,
    'votos_en_blanco': votosEnBlanco,
    'foto_file_id':    fotoFileId,
    'estado':          estado,
    'votos_candidatos': votosPorCandidato.map((v) => v.toMap()).toList(),
  };
}

// ─── Voto por Candidato ───────────────────────────────────────────────────────
class VotoCandidato {
  final String candidato;
  final String partido;
  final int    votos;

  const VotoCandidato({
    required this.candidato,
    required this.partido,
    required this.votos,
  });

  factory VotoCandidato.fromMap(Map<String, dynamic> map) => VotoCandidato(
    candidato: map['candidato'] ?? '',
    partido:   map['partido']   ?? '',
    votos:     map['votos']     ?? 0,
  );

  Map<String, dynamic> toMap() => {
    'candidato': candidato,
    'partido':   partido,
    'votos':     votos,
  };
}

// ─── Veedor Electoral ─────────────────────────────────────────────────────────
class VeedorElectoral {
  final String id;
  final String nombre;
  final String cedula;
  final String partido;
  final String mesaAsignada;
  final String email;

  const VeedorElectoral({
    required this.id,
    required this.nombre,
    required this.cedula,
    required this.partido,
    required this.mesaAsignada,
    required this.email,
  });

  factory VeedorElectoral.fromMap(Map<String, dynamic> map) => VeedorElectoral(
    id:            map['\$id']           ?? '',
    nombre:        map['nombre']         ?? '',
    cedula:        map['cedula']         ?? '',
    partido:       map['partido']        ?? '',
    mesaAsignada:  map['mesa_asignada']  ?? '',
    email:         map['email']          ?? '',
  );
}
