import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home_layout/bottom_nav_bar_tabs/tables_tab_screen/data/data_sources/api_service_for_table_standing.dart';
import '../networking/api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(getIt<Dio>()));
  getIt.registerSingleton<StandingsService>(
      StandingsService(getIt<ApiService>()));
}
