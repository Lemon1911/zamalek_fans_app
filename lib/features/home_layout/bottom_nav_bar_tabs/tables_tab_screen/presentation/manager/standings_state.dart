part of 'standings_cubit.dart';

@immutable
abstract class StandingsState {}

class StandingsInitial extends StandingsState {}

class StandingsLoading extends StandingsState {}

class StandingsLoaded extends StandingsState {
  final List<Standing> standings;

  StandingsLoaded(this.standings);
}

class StandingsError extends StandingsState {
  final String message;

  StandingsError(this.message);
}
