import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      emit(StandingsLoaded(standings));
    } catch (e) {
      emit(StandingsError(e.toString()));
    }
  }
}
