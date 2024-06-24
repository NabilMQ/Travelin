import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({ super.key });

  @override
  State <EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: ValueListenableBuilder(
        valueListenable: isEmailSignUpError,
        builder: (context, isEmailSignUpErrorValue, child) {
          return ValueListenableBuilder(
            valueListenable: isEmailSignUpFocused,
            builder: (context, isEmailSignUpFocusedValue, child) {
              return Container(
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: isEmailSignUpErrorValue ? getRedColor : isEmailSignUpFocusedValue ? getOrangeColor : getGreyColor,
                        blurRadius: 5,
                        spreadRadius: 0,
                      ),
                    ],
                    color: getWhiteColor,
                  ),
                child: TextField(
                  controller: emailSignUpController,
                  focusNode: emailSignUpFocus,
                  keyboardType: TextInputType.emailAddress,
                  onSubmitted: (value) {
                    if (!validateEmail(value)) {
                      isEmailSignUpError.value = true;
                    }
                    else {
                      isEmailSignUpError.value = false;
                    }
                  },
                  onChanged: (value) {
                    if (validateEmail(value)) {
                      isEmailSignUpError.value = false;
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(15),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: isEmailSignUpErrorValue? getRedColor : isEmailSignUpFocusedValue ? getOrangeColor : getGreyColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      fontFamily: getCustomFont,  
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
