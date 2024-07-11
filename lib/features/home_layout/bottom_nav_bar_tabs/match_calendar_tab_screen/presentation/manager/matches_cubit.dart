import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/match.dart';
import '../../domain/use_cases/get_past_matches.dart';
import '../../domain/use_cases/get_upcoming_matches.dart';

part 'matches_state.dart';

class MatchesCubit extends Cubit<MatchesState> {
  final GetPastMatches getPastMatches;
  final GetUpcomingMatches getUpcomingMatches;

  MatchesCubit(this.getPastMatches, this.getUpcomingMatches)
      : super(MatchesInitial());

  Future<void> fetchMatches() async {
    try {
      emit(MatchesLoading());
      final pastMatches = await getPastMatches();
      final upcomingMatches = await getUpcomingMatches();
      emit(MatchesLoaded(
          pastMatches: pastMatches, upcomingMatches: upcomingMatches));
    } catch (e) {
      print('Error fetching matches: $e');
      emit(MatchesError(e.toString()));
    }
  }
}
