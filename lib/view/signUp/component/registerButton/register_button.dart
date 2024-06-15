import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class RegisterButton extends StatefulWidget {
  const RegisterButton({ super.key });

  @override
  State <RegisterButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: SizedBox(
        width: size.width,
        height: 50,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: getBlackColor.withOpacity(0.25),
                blurRadius: 5,
              ),
            ],
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              padding: const MaterialStatePropertyAll(EdgeInsets.all(12.5)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              shadowColor: MaterialStatePropertyAll(getTransparentColor),
              backgroundColor: MaterialStatePropertyAll(getOrangeColor),
              foregroundColor: MaterialStatePropertyAll(getOrangeColor),
              overlayColor: MaterialStatePropertyAll(getOrangeColor),
            ),
            onPressed: () {
              bool anyError = false;

              if (fullNameController.text == "") {
                isFullNameError.value = true;
                anyError = true;
              }

              if (!validateTelephoneNumber(telephoneNumberController.text)) {
                isTelephoneNumberError.value = true;
                anyError = true;
              }

              if (!validateEmail(emailSignUpController.text)) {
                isEmailSignUpError.value = true;
                anyError = true;
              }

              if (userIdType == "") {
                isIdTypeError.value = true;
                anyError = true;
              }

              if (validateIdNumber(idNumberController.text) || idNumberController.text == "") {
                isIdNumberError.value = true;
                anyError = true;
              }

              if (dateOfBirthController.text == "") {
                isDateOfBirthError.value = true;
                anyError = true;
              }

              if (validatePassword(passwordSignUpController.text)) {
                isPasswordSignUpError.value = true;
                anyError = true;
              }

              if (userGender.value == "") {
                isUserGenderError.value = true;
                anyError = true;
              }
            },
            child: Center(
              child: Text(
                "Daftar",
                style: TextStyle(
                  color: getWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontFamily: getCustomFont,  
                ),
              ),
            ),
          ),
        ),
      ),    
    );
  }
}