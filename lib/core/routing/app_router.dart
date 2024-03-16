import 'package:flutter/material.dart';
import 'package:zamalek_fans_app/core/routing/routes.dart';

class AppRouter {
  Object generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
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
