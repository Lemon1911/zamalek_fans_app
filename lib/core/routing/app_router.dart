import 'package:flutter/material.dart';
import 'package:zamalek_fans_app/core/routing/routes.dart';
import 'package:zamalek_fans_app/features/login/presentation/screens/login_screen.dart';
import 'package:zamalek_fans_app/features/register/presentation/screens/register_screen.dart';

import '../../features/onboarding/presentation/screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route Defined ${settings.name}"),
            ),
          ),
        );
    }
  }
}
