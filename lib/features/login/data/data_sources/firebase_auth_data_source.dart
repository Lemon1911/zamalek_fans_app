import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthDataSource {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthDataSource(this.firebaseAuth);

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      // Handle authentication errors
      print('Error signing in: $e');
      return null;
    }
  }

  Future<User?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      // Handle registration errors
      print('Error registering user: $e');
      return null;
    }
  }
}
