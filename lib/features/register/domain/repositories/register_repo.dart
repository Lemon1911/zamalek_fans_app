abstract class RegisterRepository {
  Future<void> register(
    String email,
    String password,
    String name,
    String phone,
  );
}
