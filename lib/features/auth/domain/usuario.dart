export '../../electoral/domain/entities/usuario_rol.dart';
import '../../electoral/domain/entities/usuario_rol.dart';

class Usuario {
  final String id;
  final String cedula;
  final String nombres;
  final String apellidos;
  final String telefono;
  final String email;
  final RolUsuario rol;
  final String? recintoId;
  final bool debeCambiarPassword;
  final String authUserId;

  const Usuario({
    required this.id,
    required this.cedula,
    required this.nombres,
    required this.apellidos,
    required this.telefono,
    required this.email,
    required this.rol,
    required this.debeCambiarPassword,
    required this.authUserId,
    this.recintoId,
  });

  String get nombreCompleto => '$nombres $apellidos';

  factory Usuario.fromMap(Map<String, dynamic> map) => Usuario(
        id: map['\$id'] ?? '',
        cedula: map['cedula'] ?? '',
        nombres: map['nombres'] ?? '',
        apellidos: map['apellidos'] ?? '',
        telefono: map['telefono'] ?? '',
        email: map['email'] ?? '',
        rol: RolUsuario.fromString(map['rol'] ?? 'veedor'),
        recintoId: map['recinto_id'],
        debeCambiarPassword: map['debe_cambiar_password'] ?? true,
        authUserId: map['auth_user_id'] ?? '',
      );

  Map<String, dynamic> toMap() => {
        'cedula': cedula,
        'nombres': nombres,
        'apellidos': apellidos,
        'telefono': telefono,
        'email': email,
        'rol': rol.toApiString(),
        'recinto_id': recintoId,
        'debe_cambiar_password': debeCambiarPassword,
        'auth_user_id': authUserId,
      };
}