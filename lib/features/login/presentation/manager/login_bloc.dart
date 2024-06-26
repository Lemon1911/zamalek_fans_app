import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use_cases/login_use_case.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;

  LoginCubit(this.loginUseCase) : super(LoginInitial());

  void login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      emit(LoginFailure("Please enter email and password"));
      return;
    }
    try {
      emit(LoginLoading());
      final user = await loginUseCase(email, password);
      if (user != null) {
        emit(LoginSuccess(user));
      } else {
        emit(LoginFailure("Login failed"));
      }
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}
