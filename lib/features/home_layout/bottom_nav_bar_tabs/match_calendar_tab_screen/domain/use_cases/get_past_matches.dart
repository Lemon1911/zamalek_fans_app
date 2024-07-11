import '../entities/match.dart';
import '../repositories/match_repo.dart';

class GetPastMatches {
  final MatchRepo repository;

  GetPastMatches(this.repository);

  Future<List<Match>> call() async {
    return await repository.getPastMatches();
  }
}
