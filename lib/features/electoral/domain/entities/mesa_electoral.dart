class MesaElectoral {
  final String id;
  final String numeroJrv;
  final String recintoId;
  final String departamento;
  final int totalHabilitados;
  final String estado; // 'pendiente' | 'con_acta_alcalde' | 'con_acta_prefecto' | 'completa'
  final String? veedorId;

  /// Nombre del recinto al que pertenece. No existe como columna en la
  /// tabla `mesas` (solo está `recinto_id`), así que se llena en el
  /// repositorio haciendo un join en memoria con la lista de recintos.
  /// Si no se llenó, queda vacío y la UI puede caer de vuelta al recintoId.
  final String recintoNombre;

  const MesaElectoral({
    required this.id,
    required this.numeroJrv,
    required this.recintoId,
    required this.departamento,
    required this.totalHabilitados,
    this.estado = 'pendiente',
    this.veedorId,
    this.recintoNombre = '',
  });

  /// Alias para no tener que renombrar todo en la UI ya escrita.
  String get numero => numeroJrv;

  /// Alias de compatibilidad: si no se hizo el join, muestra el id.
  String get recinto => recintoNombre.isNotEmpty ? recintoNombre : recintoId;

  factory MesaElectoral.fromMap(Map<String, dynamic> map, {String recintoNombre = ''}) =>
      MesaElectoral(
        id: map['\$id'] ?? '',
        numeroJrv: map['numero_jrv'] ?? '',
        recintoId: map['recinto_id'] ?? '',
        departamento: map['departamento'] ?? '',
        totalHabilitados: map['total_habilitados'] ?? 0,
        estado: map['estado'] ?? 'pendiente',
        veedorId: map['veedor_id'],
        recintoNombre: recintoNombre,
      );

  Map<String, dynamic> toMap() => {
        'numero_jrv': numeroJrv,
        'recinto_id': recintoId,
        'departamento': departamento,
        'total_habilitados': totalHabilitados,
        'estado': estado,
        'veedor_id': veedorId,
      };

  MesaElectoral copyWith({String? estado, String? veedorId, String? recintoNombre}) =>
      MesaElectoral(
        id: id,
        numeroJrv: numeroJrv,
        recintoId: recintoId,
        departamento: departamento,
        totalHabilitados: totalHabilitados,
        estado: estado ?? this.estado,
        veedorId: veedorId ?? this.veedorId,
        recintoNombre: recintoNombre ?? this.recintoNombre,
      );
}