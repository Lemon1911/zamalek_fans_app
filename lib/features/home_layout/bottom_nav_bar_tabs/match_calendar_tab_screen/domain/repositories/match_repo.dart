import '../entities/match.dart';

abstract class MatchRepo {
  Future<List<Match>> getPastMatches();

  Future<List<Match>> getUpcomingMatches();
}
