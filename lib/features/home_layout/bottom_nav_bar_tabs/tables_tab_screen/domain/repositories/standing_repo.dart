import '../entities/standing.dart';

abstract class StandingRepo {
  Future<List<Standing>> getStandings();
}
