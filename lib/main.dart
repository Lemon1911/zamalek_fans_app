import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:zamalek_fans_app/core/routing/app_router.dart';
import 'package:zamalek_fans_app/zamalek_fans_app.dart';

import 'core/injections/di_setup.dart';
import 'features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/domain/use_cases/get_past_matches.dart';
import 'features/home_layout/bottom_nav_bar_tabs/match_calendar_tab_screen/domain/use_cases/get_upcoming_matches.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  setup();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        Provider<GetPastMatches>(create: (_) => getIt<GetPastMatches>()),
        Provider<GetUpcomingMatches>(
            create: (_) => getIt<GetUpcomingMatches>()),
      ],
      child: ZamalekFansApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
