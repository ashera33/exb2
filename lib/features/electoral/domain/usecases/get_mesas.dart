import '../entities/mesa_electoral.dart';
import '../repositories/electoral_repository.dart';

class GetMesas {
  final ElectoralRepository repository;

  GetMesas(this.repository);

  Future<List<MesaElectoral>> call() {
    return repository.getMesas();
  }
}