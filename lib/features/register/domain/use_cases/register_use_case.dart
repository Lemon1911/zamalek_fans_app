import '../repositories/register_repo.dart';

class RegisterUseCase {
  final RegisterRepository repository;

  RegisterUseCase(this.repository);

  Future<void> call(
    String email,
    String password,
    String name,
    String phone,
  ) {
    return repository.register(
      email,
      password,
      name,
      phone,
    );
  }
}
