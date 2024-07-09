import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/standing.dart';
import '../../domain/use_cases/get_standings.dart';

part 'standings_state.dart';

class StandingsCubit extends Cubit<StandingsState> {
  final GetStandings getStandings;

  StandingsCubit(this.getStandings) : super(StandingsInitial());

  Future<void> fetchStandings() async {
    try {
      emit(StandingsLoading());
      final standings = await getStandings();
      print(standings); // Debugging line
      emit(StandingsLoaded(standings));
    } catch (e) {
      print(e); // Debugging line
      emit(StandingsError(e.toString()));
    }
  }
}
