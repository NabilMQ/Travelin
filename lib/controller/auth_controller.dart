import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travelin/model/auth_model.dart';

TextEditingController get getEmailController {
  return AuthModel.emailController;
}

FocusNode get getEmailFocus {
  return AuthModel.emailFocus;
}

ValueNotifier get getIsEmailFocused {
  return AuthModel.isEmailFocused;
}

ValueNotifier get getIsEmailError {
  return AuthModel.isEmailError;
}

TextEditingController get getPasswordController {
  return AuthModel.passwordController;
}

FocusNode get getPasswordFocus {
  return AuthModel.passwordFocus;
}

ValueNotifier get getIsPasswordFocused {
  return AuthModel.isPasswordFocused;
}

ValueNotifier get getIsPasswordError {
  return AuthModel.isPasswordError;
}

ValueNotifier get getIsPasswordHidden {
  return AuthModel.isPasswordHidden;
}

void onEmailFocusChange() {
  getIsEmailFocused.value = !getIsEmailFocused.value;
}

bool validateEmail(String value) {
  return RegExp(r"(\w+?@\w+?\.\w+)$").hasMatch(value);
}

bool validatePassword(String value) {
  return value.length < 8;
}

void onPasswordFocusChange() {
  getIsPasswordFocused.value = !getIsPasswordFocused.value;
}

Future <void> signUserIn(String email, String password) async {
  // try sign in 
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    // WRONG EMAIL
    if (e.code == 'user-not-found') {
      // show error to user
      // showErrorDialog('User not found');
    } 
    // WRONG PASSWORD
    else if (e.code == 'wrong-password') {
      // show error to user
      // showErrorDialog('Wrong password');
    }
  }
}

// Future <void> signUserIn(String email, String password) async {
//   // try sign in 
//   try {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: "testtest@gmail.com",
//       password: "abcdefgh",
//     );
//   } on FirebaseAuthException catch (e) {
//     // WRONG EMAIL
//     if (e.code == 'user-not-found') {
//       // show error to user
//       // showErrorDialog('User not found');
//     } 
//     // WRONG PASSWORD
//     else if (e.code == 'wrong-password') {
//       // show error to user
//       // showErrorDialog('Wrong password');
//     }
//   }
// }

final user = FirebaseAuth.instance.currentUser!;

//sign user out method
Future <void> signUserOut() async {
  await FirebaseAuth.instance.signOut();
}

void addAuthFormListener() {
    getEmailFocus.addListener(onEmailFocusChange);
    getPasswordFocus.addListener(onPasswordFocusChange);
}

void removeAuthFormListener() {
    getEmailFocus.removeListener(onEmailFocusChange);
    getPasswordFocus.removeListener(onPasswordFocusChange);
}

Future <String> get getUserName async {
  String tempData = await FirebaseFirestore.instance.collection("user").doc(FirebaseAuth.instance.currentUser!.uid.toString()).get().then((value) {
    return value.data()!["fullName"];
  });
  return tempData;
}