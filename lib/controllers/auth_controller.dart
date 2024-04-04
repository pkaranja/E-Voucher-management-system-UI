import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _firebaseAuth;

  AuthController(this._firebaseAuth);

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Handle successful login, like navigation
    } catch (e) {
      // Handle login error
      throw e;
    }
  }
}
