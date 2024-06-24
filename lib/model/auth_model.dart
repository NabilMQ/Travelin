import 'package:flutter/material.dart';

mixin AuthModel {
  static TextEditingController emailController = TextEditingController();
  static FocusNode emailFocus = FocusNode();
  static ValueNotifier isEmailFocused = ValueNotifier <bool>(false);
  static ValueNotifier isEmailError = ValueNotifier <bool>(false);

  static TextEditingController passwordController = TextEditingController();
  static FocusNode passwordFocus = FocusNode();
  static ValueNotifier isPasswordFocused = ValueNotifier <bool>(false);
  static ValueNotifier isPasswordError = ValueNotifier <bool>(false);
  static ValueNotifier isPasswordHidden = ValueNotifier(true);
}
