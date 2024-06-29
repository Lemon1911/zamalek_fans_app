import '../../data/models/table_standing_model.dart';

class StandingsState {
  final List<TeamStandingData> standings;
  final bool isLoading;
  final String error;

  StandingsState({
    required this.standings,
    required this.isLoading,
    required this.error,
  });

  factory StandingsState.initial() {
    return StandingsState(standings: [], isLoading: false, error: '');
  }

  StandingsState copyWith({
    List<TeamStandingData>? standings,
    bool? isLoading,
    String? error,
  }) {
    return StandingsState(
      standings: standings ?? this.standings,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
