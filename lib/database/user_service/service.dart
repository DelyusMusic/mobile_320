import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_films/database/user_service/model.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserModel?> singIn(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user!;
      return UserModel.fromFirebase(user);
    } catch (e) {
      return null;
    }
  }

  Future<UserModel?> singUp(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user!;
      return UserModel.fromFirebase(user);
    } catch (e) {
      return null;
    }
  }

  Future logOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }

  Stream<UserModel?> get currentUser {
    return _firebaseAuth
        .authStateChanges()
        .map((user) => user != null ? UserModel.fromFirebase(user) : null);
  }
}
