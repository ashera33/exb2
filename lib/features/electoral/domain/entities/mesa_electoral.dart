class MesaElectoral {
  final String id;
  final String numero;
  final String recinto;
  final String municipio;
  final String departamento;
  final int totalHabilitados;
  final String estado;

  const MesaElectoral({
    required this.id,
    required this.numero,
    required this.recinto,
    required this.municipio,
    required this.departamento,
    required this.totalHabilitados,
    this.estado = 'activa',
  });
}