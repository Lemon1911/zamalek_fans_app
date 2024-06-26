import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zamalek_fans_app/core/routing/app_router.dart';
import 'package:zamalek_fans_app/zamalek_fans_app.dart';

import 'core/injections/di_setup.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setup();
  runApp(
    ZamalekFansApp(
      appRouter: AppRouter(),
    ),
  );
}
