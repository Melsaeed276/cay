import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  // create instance of firebase auth
  FirebaseAuth auth = FirebaseAuth.instance;

  // check if it is signed in
  bool isSignedIn() {
    bool _isSigned = false;
    auth.authStateChanges().listen((User? user) {
      if (user == null) {
        _isSigned = false;
      } else {
        _isSigned = true;
      }
    });

    return _isSigned;
  }

  showMessage(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      // action: SnackBarAction(
      //   label: 'Undo',
      //   onPressed: () {
      //     // Some code to undo the change.
      //   },
      // ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  //get user
  Stream<User?> get user {
    return auth.authStateChanges();
  }

  Future<bool> forgetPassword(String email, BuildContext context) async {
    try {
      await auth.sendPasswordResetEmail(
        email: email,
      );

      showMessage(context, 'The email is send');
      return true;
    } catch (e) {
      //print(e);
      showMessage(context, '$e');
      return false;
    }
  }

  // sign up
  Future<bool> signUp(
      String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      showMessage(context, 'Signed up successfully');
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showMessage(context, 'The password provided is too weak.');
        return false;
      } else if (e.code == 'email-already-in-use') {
        showMessage(context, 'The account already exists for that email.');
        return false;
      }
    } catch (e) {
      //print(e);
      showMessage(context, '$e');
      return false;
    }

    //showMessage(context, 'Error in Sign up');
    return false;
  }

  //sign in
  Future<bool> signIn(
      String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      showMessage(context, 'Signed up successfully');
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showMessage(context, 'No user found for that email.');
        return false;
      } else if (e.code == 'wrong-password') {
        showMessage(context, 'Wrong password provided for that user.');
        return false;
      }
    }
    showMessage(context, 'Error in Sign in');
    return false;
  }

  // get current user data
  User? getUser() {
    return auth.currentUser;
  }

  //sign out
  Future<bool> signOut(BuildContext context) async {
    await auth.signOut();

    if (isSignedIn() == false) {
      showMessage(context, 'Signed out successfully');
      return true;
    } else {
      showMessage(context, 'Error in signing out');
      return false;
    }
  }
}
