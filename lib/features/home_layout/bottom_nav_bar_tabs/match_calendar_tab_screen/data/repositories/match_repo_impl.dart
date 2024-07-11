import '../../domain/entities/match.dart';
import '../../domain/repositories/match_repo.dart';
import '../data_sources/match_data_source.dart';

class MatchRepoImpl implements MatchRepo {
  final MatchRemoteDataSource remoteDataSource;

  MatchRepoImpl(this.remoteDataSource);

  @override
  Future<List<Match>> getPastMatches() async {
    final matches = await remoteDataSource.getPastMatches();
    return matches
        .map((model) => Match(
              stadium: model.stadium,
              homeTeam: model.homeTeam,
              homeTeamLogo: model.homeTeamLogo,
              awayTeam: model.awayTeam,
              awayTeamLogo: model.awayTeamLogo,
            ))
        .toList();
  }

  @override
  Future<List<Match>> getUpcomingMatches() async {
    final matches = await remoteDataSource.getUpcomingMatches();
    return matches
        .map((model) => Match(
              stadium: model.stadium,
              homeTeam: model.homeTeam,
              homeTeamLogo: model.homeTeamLogo,
              awayTeam: model.awayTeam,
              awayTeamLogo: model.awayTeamLogo,
            ))
        .toList();
  }
}
