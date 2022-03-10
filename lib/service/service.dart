import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class FireBaseService {
  static FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  static signIn({required String email, required String password}) async {
    await firebaseAuth
        .signInWithEmailAndPassword(
          email: email.trim(),
          password: password.trim(),
        )
        .whenComplete(() => debugPrint("Ro'yxatdan o'tdingiz"));
  }

  static signUp({required String email, required String password}) async {
    await firebaseAuth
        .createUserWithEmailAndPassword(
          email: email.trim(),
          password: password.trim(),
        )
        .whenComplete(
          () => debugPrint("Ro'yxatdan o'tdingiz !"),
        );
  }
}
