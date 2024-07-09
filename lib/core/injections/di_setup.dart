import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

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

  // Register StandingRemoteDataSource
  getIt.registerLazySingleton<StandingRemoteDataSource>(
      () => StandingDataSourceImpl(getIt<ApiService>()));
  print('StandingDataSource registered');

  // Register StandingRepository
  getIt.registerLazySingleton<StandingRepo>(
      () => StandingRepoImpl(getIt<StandingRemoteDataSource>()));
  print('StandingRepository registered');

  // Register GetStandings use case
  getIt.registerLazySingleton<GetStandings>(
      () => GetStandings(getIt<StandingRepo>()));
  print('GetStandings registered');

  // Register StandingsCubit
  getIt.registerFactory<StandingsCubit>(
      () => StandingsCubit(getIt<GetStandings>()));
  print('StandingsCubit registered');
}
