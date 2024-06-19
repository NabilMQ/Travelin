import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travelin/model/sign_up_model.dart';

TextEditingController get getFullNameController{
  return SignUpModel.fullNameController;
}

FocusNode get getFullNameFocus {
  return SignUpModel.fullNameFocus;
}

ValueNotifier get getIsFullNameFocused {
  return SignUpModel.isFullNameFocused;
}

ValueNotifier get getIsFullNameError {
  return SignUpModel.isFullNameError;
}

ValueNotifier get getIsFullNameHidden {
  return SignUpModel.isFullNameHidden;
}

TextEditingController get getTelephoneNumberController {
  return SignUpModel.telephoneNumberController;
}

FocusNode get getTelephoneNumberFocus {
  return SignUpModel.telephoneNumberFocus;
}

ValueNotifier get getIsTelephoneNumberFocused {
  return SignUpModel.isTelephoneNumberFocused;
}

ValueNotifier get getIsTelephoneNumberError {
  return SignUpModel.isTelephoneNumberError;
}

ValueNotifier get getIsTelephoneNumberHidden {
  return SignUpModel.isTelephoneNumberHidden;
}

TextEditingController get getEmailSignUpController {
  return SignUpModel.emailSignUpController;
}

FocusNode get getEmailSignUpFocus {
  return SignUpModel.emailSignUpFocus;
}

ValueNotifier get getIsEmailSignUpFocused {
  return SignUpModel.isEmailSignUpFocused;
}

ValueNotifier get getIsEmailSignUpError {
  return SignUpModel.isEmailSignUpError;
}

ValueNotifier get getIsEmailSignUpHidden {
  return SignUpModel.isEmailSignUpHidden;
}

String get getUserIdType {
  return SignUpModel.userIdType;
}

ValueNotifier get getIsIdTypeFocused {
  return SignUpModel.isIdTypeFocused;
}

ValueNotifier get getIsIdTypeError {
  return SignUpModel.isIdTypeError;
}

TextEditingController get getIdNumberController {
  return SignUpModel.idNumberController;
}

FocusNode get getIdNumberFocus {
  return SignUpModel.idNumberFocus;
}

ValueNotifier get getIsIdNumberFocused {
  return SignUpModel.isIdNumberFocused;
}

ValueNotifier get getIsIdNumberError {
  return SignUpModel.isIdNumberError;
}

TextEditingController get getDateOfBirthController {
  return SignUpModel.dateOfBirthController;
}

ValueNotifier get getIsDateOfBirthError {
  return SignUpModel.isDateOfBirthError;
}

ValueNotifier get getIsDateOfBirthHidden {
  return SignUpModel.isDateOfBirthHidden;
}

DateTime? get getChoosedDate {
  return SignUpModel.choosedDate;
}

DateTime? get getDateOfBirth {
  return SignUpModel.dateOfBirth;
}

TextEditingController get getPasswordSignUpController {
  return SignUpModel.passwordSignUpController;
}

FocusNode get getPasswordSignUpFocus {
  return SignUpModel.passwordSignUpFocus;
}

ValueNotifier get getIsPasswordSignUpFocused {
  return SignUpModel.isPasswordSignUpFocused;
}

ValueNotifier get getIsPasswordSignUpError {
  return SignUpModel.isPasswordSignUpError;
}

ValueNotifier get getIsPasswordSignUpHidden {
  return SignUpModel.isPasswordSignUpHidden;
}

ValueNotifier get getUserGender {
  return SignUpModel.userGender;
}

ValueNotifier get getIsUserGenderError {
  return SignUpModel.isUserGenderError;
}

void onFullNameFocusChange() {
  getIsFullNameFocused.value = !getIsFullNameFocused.value;
}

void onTelephoneNumberFocusChange() {
  getIsTelephoneNumberFocused.value = !getIsTelephoneNumberFocused.value;
}

bool validateTelephoneNumber(String value) {
  return RegExp(r"\d{11,}").hasMatch(value);
}

void onEmailSignUpFocusChange() {
  getIsEmailSignUpFocused.value = !getIsEmailSignUpFocused.value;
}

bool validateEmail(String value) {
  return RegExp(r"(\w+?@\w+?\.\w+)$").hasMatch(value);
}

bool validatePassword(String value) {
  return value.length < 8;
}

bool validateIdNumber(String value) {
  return RegExp(r"\d{16}").hasMatch(value) && value.length == 16;
}

void onIdTypeFocusChange() {
  getIsIdTypeFocused.value = !getIsIdTypeFocused.value;
}

void onIdNumberFocusChange() {
  getIsIdNumberFocused.value = !getIsIdNumberFocused.value;
}

void onPasswordFocusChange() {
  getIsPasswordSignUpFocused.value = !getIsPasswordSignUpFocused.value;
}

void addSignUpListener() {
  getFullNameFocus.addListener(onFullNameFocusChange);
  getTelephoneNumberFocus.addListener(onTelephoneNumberFocusChange);
  getEmailSignUpFocus.addListener(onEmailSignUpFocusChange);
  getIdNumberFocus.addListener(onIdNumberFocusChange);
  getPasswordSignUpFocus.addListener(onPasswordFocusChange);
}

void removeSignUpListener() {
  getFullNameController.removeListener(onFullNameFocusChange);
  getTelephoneNumberFocus.removeListener(onTelephoneNumberFocusChange);
  getEmailSignUpController.removeListener(onEmailSignUpFocusChange);
  getIdNumberFocus.removeListener(onIdNumberFocusChange);
  getPasswordSignUpFocus.removeListener(onPasswordFocusChange);
}

Future <UserCredential> signUp(String email, String password) async {
  late UserCredential credential;
  try {
    credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      debugPrint('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      debugPrint('The account already exists for that email.');
    }
  } catch (e) {
    debugPrint(e.toString());
  }

  return credential;
}

Future <void> uploadData(String idUser, String email, String telephoneNumber, String fullName, String idType, String idNumber, String dateOfBirth, String gender) async {
  await FirebaseFirestore.instance.collection("user").doc(idUser).set({
    "email": email,
    "fullName": fullName,
    "idType": idType,
    "idNumber": idNumber,
    "dateOfBirth": dateOfBirth,
    "telephoneNumber": telephoneNumber,
    "gender": gender,
  }, SetOptions(merge: true));
}