import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/register_repo.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final FirebaseAuth firebaseAuth;

  RegisterRepositoryImpl(this.firebaseAuth);

  @override
  Future<void> register(
      String email, String password, String name, String phone) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw Exception('Registration failed');
    }
  }
}
