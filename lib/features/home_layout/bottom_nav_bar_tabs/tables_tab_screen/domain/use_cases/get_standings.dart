import '../entities/standing.dart';
import '../repositories/standing_repo.dart';

class GetStandings {
  final StandingRepo repository;

  GetStandings(this.repository);

  Future<List<Standing>> call() async {
    return await repository.getStandings();
  }
}
