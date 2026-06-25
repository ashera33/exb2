import '../entities/mesa_electoral.dart';
import '../entities/acta_escrutinio.dart';

abstract class ElectoralRepository {
  Future<List<MesaElectoral>> getMesas();
  Future<void> saveActa(ActaEscrutinio acta);
}
