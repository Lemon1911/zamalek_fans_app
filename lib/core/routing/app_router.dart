import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamalek_fans_app/core/routing/routes.dart';
import 'package:zamalek_fans_app/features/home_layout/presentation/screens/home_layout.dart';
import 'package:zamalek_fans_app/features/login/presentation/screens/login_screen.dart';

import '../../features/home_layout/presentation/manager/home_layout_cubit.dart';
import '../../features/login/data/data_sources/firebase_auth_data_source.dart';
import '../../features/login/data/repositories/login_repo_impl.dart';
import '../../features/login/domain/use_cases/login_use_case.dart';
import '../../features/login/presentation/manager/login_cubit.dart';
import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../../features/register/data/repositories/register_repo_impl.dart';
import '../../features/register/domain/use_cases/register_use_case.dart';
import '../../features/register/presentation/manager/register_cubit.dart';
import '../../features/register/presentation/screens/register_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) {
            final firebaseAuthDataSource =
                FirebaseAuthDataSource(FirebaseAuth.instance);
            final loginRepository = LoginRepositoryImpl(firebaseAuthDataSource);
            final loginUseCase = LoginUseCase(loginRepository);
            return BlocProvider(
              create: (_) => LoginCubit(loginUseCase),
              child: const LoginScreen(),
            );
          },
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) {
            final registerRepository =
                RegisterRepositoryImpl(FirebaseAuth.instance);
            final registerUseCase = RegisterUseCase(registerRepository);
            return BlocProvider(
              create: (_) => RegisterCubit(registerUseCase),
              child: const RegisterScreen(),
            );
          },
        );
      case Routes.homeLayout:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider(
            create: (_) => NavigationCubit(),
            child: HomeLayout(),
          );
        });
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
