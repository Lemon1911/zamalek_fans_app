import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamalek_fans_app/features/register/presentation/manager/register_state.dart';

import '../../domain/use_cases/register_use_case.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase registerUseCase;

  RegisterCubit(this.registerUseCase) : super(RegisterInitial());

  void register(
      String email, String password, String name, String phone) async {
    if (email.isEmpty || password.isEmpty) {
      emit(RegisterFailure("Please enter email and password"));
      return;
    }
    try {
      emit(RegisterLoading());
      await registerUseCase.call(
        email,
        password,
        name,
        phone,
      );
      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterFailure(e.toString()));
    }
  }
}
