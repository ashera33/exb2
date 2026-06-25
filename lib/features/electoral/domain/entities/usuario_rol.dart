enum RolUsuario {
  provincial,
  coordinadorRecinto,
  veedor;

  static RolUsuario fromString(String value) {
    switch (value) {
      case 'provincial':
        return RolUsuario.provincial;
      case 'coordinador_recinto':
        return RolUsuario.coordinadorRecinto;
      case 'veedor':
        return RolUsuario.veedor;
      default:
        throw ArgumentError('Rol desconocido: $value');
    }
  }

  String toApiString() {
    switch (this) {
      case RolUsuario.provincial:
        return 'provincial';
      case RolUsuario.coordinadorRecinto:
        return 'coordinador_recinto';
      case RolUsuario.veedor:
        return 'veedor';
    }
  }

  String get displayName {
    switch (this) {
      case RolUsuario.provincial:
        return 'Coordinador Provincial';
      case RolUsuario.coordinadorRecinto:
        return 'Coordinador de Recinto';
      case RolUsuario.veedor:
        return 'Veedor de Mesa';
    }
  }
}