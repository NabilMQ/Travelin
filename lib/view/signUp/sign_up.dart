import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travelin/view/signUp/component/dateOfBirth/date_of_birth_text.dart';
import 'package:travelin/view/signUp/component/dateOfBirth/date_of_birth_text_field.dart';
import 'package:travelin/view/signUp/component/email/email_text.dart';
import 'package:travelin/view/signUp/component/email/email_text_field.dart';
import 'package:travelin/view/signUp/component/errorText/error_text.dart';
import 'package:travelin/view/signUp/component/footer/footer.dart';
import 'package:travelin/view/signUp/component/full_name/full_name_text.dart';
import 'package:travelin/view/signUp/component/full_name/full_name_text_field.dart';
import 'package:travelin/view/signUp/component/gender/gender_text.dart';
import 'package:travelin/view/signUp/component/gender/gender_option.dart';
import 'package:travelin/view/signUp/component/header/header.dart';
import 'package:travelin/view/signUp/component/idTypeNoId/id_type_no_id_error.dart';
import 'package:travelin/view/signUp/component/idTypeNoId/id_type_no_id_text.dart';
import 'package:travelin/view/signUp/component/idTypeNoId/id_type_no_id_text_field.dart';
import 'package:travelin/view/signUp/component/password/password_text.dart';
import 'package:travelin/view/signUp/component/password/password_text_field.dart';
import 'package:travelin/view/signUp/component/registerButton/register_button.dart';
import 'package:travelin/view/signUp/component/telephone_number/telephone_number_text.dart';
import 'package:travelin/view/signUp/component/telephone_number/telephone_number_text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({ super.key });

  @override
  State <SignUp> createState() => _SignUpState();
}

// buat model baru

TextEditingController fullNameController = TextEditingController();
FocusNode fullNameFocus = FocusNode();
ValueNotifier isFullNameFocused = ValueNotifier <bool>(false);
ValueNotifier isFullNameError = ValueNotifier <bool>(false);
ValueNotifier isFullNameHidden = ValueNotifier(true);

TextEditingController telephoneNumberController = TextEditingController();
FocusNode telephoneNumberFocus = FocusNode();
ValueNotifier isTelephoneNumberFocused = ValueNotifier <bool>(false);
ValueNotifier isTelephoneNumberError = ValueNotifier <bool>(false);
ValueNotifier isTelephoneNumberHidden = ValueNotifier(true);

TextEditingController emailSignUpController = TextEditingController();
FocusNode emailSignUpFocus = FocusNode();
ValueNotifier isEmailSignUpFocused = ValueNotifier <bool>(false);
ValueNotifier isEmailSignUpError = ValueNotifier <bool>(false);
ValueNotifier isEmailSignUpHidden = ValueNotifier(true);

String userIdType = "";
ValueNotifier isIdTypeFocused = ValueNotifier <bool>(false);
ValueNotifier isIdTypeError = ValueNotifier <bool>(false);

TextEditingController idNumberController = TextEditingController();
FocusNode idNumberFocus = FocusNode();
ValueNotifier isIdNumberFocused = ValueNotifier <bool>(false);
ValueNotifier isIdNumberError = ValueNotifier <bool>(false);

TextEditingController dateOfBirthController = TextEditingController();
ValueNotifier isDateOfBirthError = ValueNotifier <bool>(false);
ValueNotifier isDateOfBirthHidden = ValueNotifier(true);
DateTime? choosedDate;
DateTime? dateOfBirth;

TextEditingController passwordSignUpController = TextEditingController();
FocusNode passwordSignUpFocus = FocusNode();
ValueNotifier isPasswordSignUpFocused = ValueNotifier <bool>(false);
ValueNotifier isPasswordSignUpError = ValueNotifier <bool>(false);
ValueNotifier isPasswordSignUpHidden = ValueNotifier(true);

ValueNotifier userGender = ValueNotifier("");
ValueNotifier isUserGenderError = ValueNotifier(false);

void onFullNameFocusChange() {
  isFullNameFocused.value = !isFullNameFocused.value;
}

void onTelephoneNumberFocusChange() {
  isTelephoneNumberFocused.value = !isTelephoneNumberFocused.value;
}

bool validateTelephoneNumber(String value) {
  return RegExp(r"\d{11,}").hasMatch(value);
}

void onEmailSignUpFocusChange() {
  isEmailSignUpFocused.value = !isEmailSignUpFocused.value;
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
  isIdTypeFocused.value = !isIdTypeFocused.value;
}

void onIdNumberFocusChange() {
  isIdNumberFocused.value = !isIdNumberFocused.value;
}

void onPasswordFocusChange() {
  isPasswordSignUpFocused.value = !isPasswordSignUpFocused.value;
}

void addSignUpListener() {
  fullNameFocus.addListener(onFullNameFocusChange);
  telephoneNumberFocus.addListener(onTelephoneNumberFocusChange);
  emailSignUpFocus.addListener(onEmailSignUpFocusChange);
  idNumberFocus.addListener(onIdNumberFocusChange);
  passwordSignUpFocus.addListener(onPasswordFocusChange);
}

void removeSignUpListener() {
  fullNameFocus.removeListener(onFullNameFocusChange);
  telephoneNumberFocus.removeListener(onTelephoneNumberFocusChange);
  emailSignUpFocus.removeListener(onEmailSignUpFocusChange);
  idNumberFocus.removeListener(onIdNumberFocusChange);
  passwordSignUpFocus.removeListener(onPasswordFocusChange);
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

// batas model

class _SignUpState extends State<SignUp> {

  @override
  void initState() {
    super.initState();
    addSignUpListener();
  }

  @override
  void dispose() {
    removeSignUpListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          height: size.height,
          width: size.width,
          margin: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Header(),
          
              const SizedBox(height: 5),
                  
              const FullNameText(),
          
              const SizedBox(height: 5),
          
              const FullNameTextField(),
          
              ErrorText(
                flex: 1,
                isError: isFullNameError,
                errorMessage: "Please fill with your full name",
              ),
          
              const TelephoneNumberText(),
          
              const SizedBox(height: 5),
          
              const TelephoneNumberTextField(),
          
              ErrorText(
                flex: 1,
                isError: isTelephoneNumberError,
                errorMessage: "Minimum telephone number length is 11 number",
              ),
          
              const EmailText(),
          
              const SizedBox(height: 5),
          
              const EmailTextField(),
          
              ErrorText(
                flex: 1,
                isError: isEmailSignUpError,
                errorMessage: "Wrong email format",
              ),
          
              const IdTypeNoIdText(),
          
              const SizedBox(height: 5),
          
              const IdTypeNoIdTextField(),
          
              const IdTypeNoIdError(),
          
              const DateOfBirthText(),
          
              const SizedBox(height: 5),
          
              const DateOfBirthTextField(),
          
              ErrorText(
                flex: 1,
                isError: isDateOfBirthError,
                errorMessage: "Please fill your date of birth",
              ),
          
              const PasswordText(),
          
              const SizedBox(height: 5),
          
              const PasswordTextField(),
          
              ErrorText(
                flex: 1,
                isError: isPasswordSignUpError,
                errorMessage: "Minimum password length is 8 character",
              ),
          
              const GenderText(),
          
              const SizedBox(height: 5),
          
              const GenderOption(),
          
              ErrorText(
                flex: 1,
                isError: isUserGenderError,
                errorMessage: "Please choose one of the options",
              ),
                  
              const RegisterButton(),
          
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}