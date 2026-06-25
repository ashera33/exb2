import '../entities/mesa_electoral.dart';
import '../entities/acta_escrutinio.dart';
import '../entities/recinto.dart';
import '../../../auth/domain/usuario.dart';

abstract class ElectoralRepository {
  // ── Mesas ──────────────────────────────────────────────────────────────────
  Future<List<MesaElectoral>> getMesas();
  Future<List<MesaElectoral>> getMesasByRecinto(String recintoId);
  Future<List<MesaElectoral>> getMesasByVeedor(String authUserId);

  // ── Recintos ───────────────────────────────────────────────────────────────
  Future<List<Recinto>> getRecintos();
  Future<Recinto> createRecinto({
    required String canton,
    required String parroquia,
    required String nombre,
  });
  Future<MesaElectoral> createMesa({
    required String recintoId,
    required String numeroJrv,
    required String departamento,
    required int totalHabilitados,
  });

  /// Cantidad de mesas (JRV) registradas para un recinto. La tabla
  /// `recintos` no guarda este número como columna; se calcula contando
  /// documentos en `mesas` con ese recinto_id.
  Future<int> contarMesasPorRecinto(String recintoId);

  // ── Actas ──────────────────────────────────────────────────────────────────
  Future<void> saveActa(ActaEscrutinio acta);
  Future<void> updateActa(ActaEscrutinio acta);
  Future<List<ActaEscrutinio>> getActasByMesa(String mesaId);

  // ── Usuarios ───────────────────────────────────────────────────────────────
  Future<Usuario> createUsuario({
    required String cedula,
    required String nombres,
    required String apellidos,
    required String telefono,
    required String email,
    required RolUsuario rol,
    String? recintoId,
  });
  Future<List<Usuario>> getCoordinadoresByRecinto(String recintoId);
  Future<List<Usuario>> getVeedoresByRecinto(String recintoId);
  Future<void> asignarVeedorAMesa(String veedorAuthId, String mesaId);

  // ── Organizaciones políticas ───────────────────────────────────────────────
  Future<List<OrganizacionPolitica>> getOrganizaciones(String dignidad);
}

class OrganizacionPolitica {
  final String id;
  final String nombre;
  final String candidato;
  final String dignidad; // 'alcalde' | 'prefecto'

  const OrganizacionPolitica({
    required this.id,
    required this.nombre,
    required this.candidato,
    required this.dignidad,
  });

  factory OrganizacionPolitica.fromMap(Map<String, dynamic> map) =>
      OrganizacionPolitica(
        id: map['\$id'] ?? '',
        nombre: map['nombre'] ?? '',
        candidato: map['candidato'] ?? '',
        dignidad: map['dignidad'] ?? '',
      );
}