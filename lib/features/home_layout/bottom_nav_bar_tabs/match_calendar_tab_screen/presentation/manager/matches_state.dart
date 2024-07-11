part of 'matches_cubit.dart';

@immutable
abstract class MatchesState {}

class MatchesInitial extends MatchesState {}

class MatchesLoading extends MatchesState {}

class MatchesLoaded extends MatchesState {
  final List<Match> pastMatches;
  final List<Match> upcomingMatches;

  MatchesLoaded({required this.pastMatches, required this.upcomingMatches});
}

class MatchesError extends MatchesState {
  final String message;

  MatchesError(this.message);
}
