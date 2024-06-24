import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class NoIdTextField extends StatefulWidget {
  const NoIdTextField({ super.key });

  @override
  State <NoIdTextField> createState() => _NoIdTextFieldState();
}

class _NoIdTextFieldState extends State<NoIdTextField> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 7,
      child: ValueListenableBuilder(
        valueListenable: isIdNumberError,
        builder: (context, isIdNumberErrorValue, child) {
          return ValueListenableBuilder(
            valueListenable: isIdNumberFocused,
            builder: (context, isIdNumberFocusedValue, child) {
              return Container(
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: isIdNumberErrorValue ? getRedColor : isIdNumberFocusedValue ? getOrangeColor : getGreyColor,
                        blurRadius: 5,
                        spreadRadius: 0,
                      ),
                    ],
                    color: getWhiteColor,
                  ),
                child: TextField(
                  controller: idNumberController,
                  focusNode: idNumberFocus,
                  keyboardType: TextInputType.number,
                  onSubmitted: (value) {
                    if (validateIdNumber(value)) {
                      isIdNumberError.value = false;
                    }
                    else {
                      isIdNumberError.value = true;
                    }
                  },
                  onChanged: (value) {
                    if (validateIdNumber(value)) {
                      isIdNumberError.value = false;
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(15),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: "Nomor ID",
                    hintStyle: TextStyle(
                      color: isIdNumberErrorValue ? getRedColor : isIdNumberFocusedValue ? getOrangeColor : getGreyColor,
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