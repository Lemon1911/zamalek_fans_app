import '../../domain/entities/user.dart';
import '../../domain/repositories/login_repo.dart';
import '../data_sources/firebase_auth_data_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final FirebaseAuthDataSource firebaseAuthDataSource;

  LoginRepositoryImpl(this.firebaseAuthDataSource);

  @override
  Future<User?> login(String email, String password) async {
    try {
      final user = await firebaseAuthDataSource.signInWithEmailAndPassword(
          email, password);
      if (user != null && user.email != null) {
        return User(uid: user.uid, email: user.email!);
      }
    } catch (e) {
      // Handle or log error if necessary
      print(e.toString());
    }
    return null;
  }
}
