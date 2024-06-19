
import 'package:flutter/material.dart';

mixin SignUpModel {
  static TextEditingController fullNameController = TextEditingController();
  static FocusNode fullNameFocus = FocusNode();
  static ValueNotifier isFullNameFocused = ValueNotifier <bool>(false);
  static ValueNotifier isFullNameError = ValueNotifier <bool>(false);
  static ValueNotifier isFullNameHidden = ValueNotifier(true);

  static TextEditingController telephoneNumberController = TextEditingController();
  static FocusNode telephoneNumberFocus = FocusNode();
  static ValueNotifier isTelephoneNumberFocused = ValueNotifier <bool>(false);
  static ValueNotifier isTelephoneNumberError = ValueNotifier <bool>(false);
  static ValueNotifier isTelephoneNumberHidden = ValueNotifier(true);

  static TextEditingController emailSignUpController = TextEditingController();
  static FocusNode emailSignUpFocus = FocusNode();
  static ValueNotifier isEmailSignUpFocused = ValueNotifier <bool>(false);
  static ValueNotifier isEmailSignUpError = ValueNotifier <bool>(false);
  static ValueNotifier isEmailSignUpHidden = ValueNotifier(true);
  
  static String userIdType = "";
  static ValueNotifier isIdTypeFocused = ValueNotifier <bool>(false);
  static ValueNotifier isIdTypeError = ValueNotifier <bool>(false);
  
  static TextEditingController idNumberController = TextEditingController();
  static FocusNode idNumberFocus = FocusNode();
  static ValueNotifier isIdNumberFocused = ValueNotifier <bool>(false);
  static ValueNotifier isIdNumberError = ValueNotifier <bool>(false);
  
  static TextEditingController dateOfBirthController = TextEditingController();
  static ValueNotifier isDateOfBirthError = ValueNotifier <bool>(false);
  static ValueNotifier isDateOfBirthHidden = ValueNotifier(true);
  static DateTime? choosedDate;
  static DateTime? dateOfBirth;
  
  static TextEditingController passwordSignUpController = TextEditingController();
  static FocusNode passwordSignUpFocus = FocusNode();
  static ValueNotifier isPasswordSignUpFocused = ValueNotifier <bool>(false);
  static ValueNotifier isPasswordSignUpError = ValueNotifier <bool>(false);
  static ValueNotifier isPasswordSignUpHidden = ValueNotifier(true);
  
  static ValueNotifier userGender = ValueNotifier("");
  static ValueNotifier isUserGenderError = ValueNotifier(false);
}