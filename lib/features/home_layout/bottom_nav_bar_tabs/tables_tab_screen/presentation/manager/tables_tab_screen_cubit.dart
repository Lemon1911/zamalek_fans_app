import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamalek_fans_app/features/home_layout/bottom_nav_bar_tabs/tables_tab_screen/presentation/manager/tables_tab_screen_states.dart';

import '../../data/data_sources/api_service_for_table_standing.dart';

class StandingsCubit extends Cubit<StandingsState> {
  final StandingsService _standingsService;

  StandingsCubit(this._standingsService) : super(StandingsState.initial());

  Future<void> fetchStandings(String leagueId, String season) async {
    try {
      emit(state.copyWith(isLoading: true));
      final standings =
          await _standingsService.fetchStandings(leagueId, season);
      emit(state.copyWith(standings: standings, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }
}
