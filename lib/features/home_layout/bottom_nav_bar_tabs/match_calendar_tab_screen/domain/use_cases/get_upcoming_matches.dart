import '../entities/match.dart';
import '../repositories/match_repo.dart';

class GetUpcomingMatches {
  final MatchRepo repository;

  GetUpcomingMatches(this.repository);

  Future<List<Match>> call() async {
    return await repository.getUpcomingMatches();
  }
}
