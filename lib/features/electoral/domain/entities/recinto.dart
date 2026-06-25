class Recinto {
  final String id;
  final String canton;
  final String parroquia;
  final String nombre;
  final String? coordinadorRecintoId;

  const Recinto({
    required this.id,
    required this.canton,
    required this.parroquia,
    required this.nombre,
    this.coordinadorRecintoId,
  });

  factory Recinto.fromMap(Map<String, dynamic> map) => Recinto(
        id: map['\$id'] ?? '',
        canton: map['canton'] ?? '',
        parroquia: map['parroquia'] ?? '',
        nombre: map['nombre'] ?? '',
        coordinadorRecintoId: map['coordinador_recinto_id'],
      );

  Map<String, dynamic> toMap() => {
        'canton': canton,
        'parroquia': parroquia,
        'nombre': nombre,
        'coordinador_recinto_id': coordinadorRecintoId,
      };
}