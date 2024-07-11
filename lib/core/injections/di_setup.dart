import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/data/data_sources/match_data_source.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/data/repositories/match_repo_impl.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/domain/repositories/match_repo.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/domain/use_cases/get_past_matches.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/domain/use_cases/get_upcoming_matches.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/presentation/manager/matches_cubit.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/tables_tab_screen/data/data_sources/standing_data_source.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/tables_tab_screen/data/repositories/standing_repo_impl.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/tables_tab_screen/domain/repositories/standing_repo.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/tables_tab_screen/domain/use_cases/get_standings.dart';
import '../../features/home_layout/bottom_nav_bar_tabs/tables_tab_screen/presentation/manager/standings_cubit.dart';
import '../networking/api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));

  ///  Standing Data  ///
  getIt.registerLazySingleton<StandingRemoteDataSource>(
      () => StandingDataSourceImpl(getIt<ApiService>()));

  getIt.registerLazySingleton<StandingRepo>(
      () => StandingRepoImpl(getIt<StandingRemoteDataSource>()));

  getIt.registerLazySingleton<GetStandings>(
      () => GetStandings(getIt<StandingRepo>()));

  getIt.registerFactory<StandingsCubit>(
      () => StandingsCubit(getIt<GetStandings>()));

  /// Match Data ///
  getIt.registerLazySingleton<MatchRemoteDataSource>(
      () => MatchDataSourceImpl(getIt<ApiService>()));

  getIt.registerLazySingleton<MatchRepo>(
      () => MatchRepoImpl(getIt<MatchRemoteDataSource>()));

  getIt.registerLazySingleton<GetPastMatches>(
      () => GetPastMatches(getIt<MatchRepo>()));
  getIt.registerLazySingleton<GetUpcomingMatches>(
      () => GetUpcomingMatches(getIt<MatchRepo>()));

  getIt.registerFactory<MatchesCubit>(
      () => MatchesCubit(getIt<GetPastMatches>(), getIt<GetUpcomingMatches>()));
}
