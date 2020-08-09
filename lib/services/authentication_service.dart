import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> isUserLoggedIn() async {
    var user = await _firebaseAuth.currentUser();
    return user != null;
  }

  Future loginWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      var user = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user != null;
    } catch (e) {
      return e.message;
    }
  }

  Future signUpWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult.user != null;
    } catch (e) {
      return e.message;
    }
  }

  /// Signs out the firebase user
  ///
  /// Returns null if the user is signed out successfully
  Future signOut() async {
    try {
      return await _firebaseAuth.signOut();
    } catch (e) {
      return e.message;
    }
  }
}
