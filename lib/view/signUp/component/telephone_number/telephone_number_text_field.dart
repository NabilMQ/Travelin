import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class TelephoneNumberTextField extends StatefulWidget {
  const TelephoneNumberTextField({ super.key });

  @override
  State <TelephoneNumberTextField> createState() => _TelephoneNumberTextFieldState();
}

class _TelephoneNumberTextFieldState extends State<TelephoneNumberTextField> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: ValueListenableBuilder(
        valueListenable: isTelephoneNumberError,
        builder: (context, isTelephoneNumberErrorValue, child) {
          return ValueListenableBuilder(
            valueListenable: isTelephoneNumberFocused,
            builder: (context, isTelephoneNumberFocusedValue, child) {
              return Container(
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: isTelephoneNumberErrorValue ? getRedColor : isTelephoneNumberFocusedValue ? getOrangeColor : getGreyColor,
                        blurRadius: 5,
                        spreadRadius: 0,
                      ),
                    ],
                    color: getWhiteColor,
                  ),
                child: TextField(
                  controller: telephoneNumberController,
                  focusNode: telephoneNumberFocus,
                  keyboardType: TextInputType.number,
                  onSubmitted: (value) {
                    if (!validateTelephoneNumber(value)) {
                      isTelephoneNumberError.value = true;
                    }
                    else {
                      isTelephoneNumberError.value = false;
                    }
                  },
                  onChanged: (value) {
                    if (validateTelephoneNumber(value)) {
                      isTelephoneNumberError.value = false;
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(15),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: "No Telepon",
                    hintStyle: TextStyle(
                      color: isTelephoneNumberErrorValue? getRedColor : isTelephoneNumberFocusedValue ? getOrangeColor : getGreyColor,
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
      )
    );
  }
}