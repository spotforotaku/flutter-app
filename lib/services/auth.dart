import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  static final userStream = FirebaseAuth.instance.authStateChanges();
  static final user = FirebaseAuth.instance.currentUser;

  static Future<void> loginAnon() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      print("login success!");
    } on FirebaseAuthException catch (_) {
      print("Error while logging in anon");
    }
  }

  static Future<void> loginGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return;

      final googleAuth = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      await FirebaseAuth.instance.signInWithCredential(authCredential);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  static Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
