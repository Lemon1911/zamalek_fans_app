import 'package:zamalek_fans_app/features/login/domain/entities/user.dart';

abstract class LoginRepository {
  Future<User?> login(String email, String password);
}
