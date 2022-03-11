import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class FireBaseService {
  static FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  static signIn({required String email, required String password}) async {
    try {
      await firebaseAuth
          .signInWithEmailAndPassword(
            email: email.trim(),
            password: password.trim(),
          )
          .whenComplete(
            () => debugPrint("Ro'yxatdan o'tdingiz"),
          );
      return true;
    } catch (e) {
      return false;
    }
  }

  static signUp({required String email, required String password}) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(
            email: email.trim(),
            password: password.trim(),
          )
          .whenComplete(
            () => debugPrint("Ro'yxatdan o'tdingiz !"),
          );
      return true;
    } catch (e) {
      return false;
    }
  }
}
