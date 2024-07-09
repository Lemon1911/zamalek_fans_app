import '../../domain/entities/standing.dart';
import '../../domain/repositories/standing_repo.dart';
import '../data_sources/standing_data_source.dart';

class StandingRepoImpl implements StandingRepo {
  final StandingRemoteDataSource remoteDataSource;

  StandingRepoImpl(this.remoteDataSource);

  @override
  Future<List<Standing>> getStandings() async {
    final standings = await remoteDataSource.getStandings();
    return standings
        .map((model) => Standing(
              rank: model.rank,
              teamName: model.teamName,
              teamLogo: model.teamLogo,
              points: model.points,
              matchesPlayed: model.played,
              win: model.win,
              draw: model.draw,
              lose: model.lose,
            ))
        .toList();
  }
}
