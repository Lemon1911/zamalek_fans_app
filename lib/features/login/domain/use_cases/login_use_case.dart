import 'package:zamalek_fans_app/features/login/domain/entities/user.dart';

import '../repositories/login_repo.dart';

class LoginUseCase {
  final LoginRepository repository;

  LoginUseCase(this.repository);

  Future<User?> call(String email, String password) {
    return repository.login(email, password);
  }
}
