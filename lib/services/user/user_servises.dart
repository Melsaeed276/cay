import 'package:cay_platform/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

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

  Future<void> addUser(UserModel userMdoel, BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    // Call the user's CollectionReference to add a new user
    return users.add({
      'name': userMdoel.name, // John Doe
      'uid': userMdoel.uID, // Stokes and Sons
      'userType': userMdoel.type,
      'goal': userMdoel.goalID, // 42
    }).then((value) => showMessage(context, 'Signed up successfully')
        .catchError((error) => showMessage(context, 'There is a problem')));
  }
}
