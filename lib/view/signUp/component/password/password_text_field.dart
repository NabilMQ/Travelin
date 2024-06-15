import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({ super.key });

  @override
  State <PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
   @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: ValueListenableBuilder(
        valueListenable: isPasswordSignUpError,
        builder: (context, isPasswordSignUpErrorValue, child) {
          return ValueListenableBuilder(
            valueListenable: isPasswordSignUpFocused,
            builder: (context, isPasswordSignUpFocusedValue, child) {
              return Container(
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: isPasswordSignUpErrorValue ? getRedColor : isPasswordSignUpFocusedValue ? getOrangeColor : getGreyColor,
                        blurRadius: 5,
                        spreadRadius: 0,
                      ),
                    ],
                    color: getWhiteColor,
                  ),
                child: TextField(
                  controller: passwordSignUpController,
                  focusNode: passwordSignUpFocus,
                  onSubmitted: (value) {
                    if (validatePassword(value)) {
                      isPasswordSignUpError.value = true;
                    }
                    else {
                      isPasswordSignUpError.value = false;
                    }
                  },
                  onChanged: (value) {
                    if (!validatePassword(value)) {
                      isPasswordSignUpError.value = false;
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(15),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: isPasswordSignUpErrorValue? getRedColor : isPasswordSignUpFocusedValue ? getOrangeColor : getGreyColor,
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