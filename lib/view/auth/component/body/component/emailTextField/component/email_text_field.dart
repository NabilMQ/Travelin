import 'package:flutter/material.dart';
import 'package:travelin/controller/auth_controller.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({ super.key });

  @override
  State <EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ValueListenableBuilder(
        valueListenable: getIsEmailError,
        builder: (context, isEmailErrorValue, child) {
          return ValueListenableBuilder(
            valueListenable: getIsEmailFocused,
            builder: (context, isEmailFocusedValue, child) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: isEmailErrorValue ? getRedColor : isEmailFocusedValue ? getOrangeColor : getGreyColor,
                      blurRadius: 5,
                      spreadRadius: 0,
                    ),
                  ],
                  color: getWhiteColor,
                ),
                child: Center(
                  child: TextField(
                    controller: getEmailController,
                    focusNode: getEmailFocus,
                    keyboardType: TextInputType.emailAddress,
                    onSubmitted: (value) {
                      if (!validateEmail(value)) {
                        getIsEmailError.value = true;
                      }
                      else {
                        getIsEmailError.value = false;
                      }
                    },
                    onChanged: (value) {
                      if (validateEmail(value)) {
                        getIsEmailError.value = false;
                      }
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: isEmailErrorValue ? getRedColor : isEmailFocusedValue ? getOrangeColor : getGreyColor,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontFamily: getCustomFont,  
                      ),
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