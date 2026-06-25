import 'package:examenb2/features/electoral/domain/entities/mesa_electoral.dart';
import 'package:examenb2/features/electoral/domain/repositories/electoral_repository.dart';

class GetMesas {
  final ElectoralRepository repository;

  GetMesas(this.repository);

  Future<List<MesaElectoral>> call() {
    return repository.getMesas();
  }
}
