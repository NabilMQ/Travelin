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