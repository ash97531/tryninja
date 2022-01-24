import 'package:brew_crew/models/users.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  /*
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user obj based on firebase user
  Users _userFromFirebaseUser(User result) =>
      result != null ? Users(uid: result.uid) : Users(uid: null);

  // Auth change user stream
  Stream<Users?>? get user =>
      _auth.authStateChanges().map((result) => _userFromFirebaseUser(result!));

  // Sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      return _userFromFirebaseUser(result.user!);

      // await FirebaseAuth.instance.signInAnonymously();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign in using email

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {}
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      // print(e.toString());
      return null;
    }
  }
  */
}
