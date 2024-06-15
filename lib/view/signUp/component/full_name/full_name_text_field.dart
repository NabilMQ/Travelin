import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class FullNameTextField extends StatefulWidget {
  const FullNameTextField({ super.key });

  @override
  State <FullNameTextField> createState() => _FullNameTextFieldState();
}

class _FullNameTextFieldState extends State<FullNameTextField> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: Stack(
        children: [
          ValueListenableBuilder(
            valueListenable: isFullNameError,
            builder: (context, isFullNameErrorValue, child) {
              return ValueListenableBuilder(
                valueListenable: isFullNameFocused,
                builder: (context, isFullNameFocusedValue, child) {
                  return Container(
                    width: size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: isFullNameErrorValue ? getRedColor : isFullNameFocusedValue ? getOrangeColor : getGreyColor,
                            blurRadius: 5,
                            spreadRadius: 0,
                          ),
                        ],
                        color: getWhiteColor,
                      ),
                    child: TextField(
                      controller: fullNameController,
                      focusNode: fullNameFocus,
                      onSubmitted: (value) {
                        if (value == "") {
                          isFullNameError.value = true;
                        }
                        else {
                          isFullNameError.value = false;
                        }
                      },
                      onChanged: (value) {
                        if (value != "") {
                          isFullNameError.value = false;
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        hintText: "Nama Lengkap",
                        hintStyle: TextStyle(
                          color: isFullNameErrorValue? getRedColor : isFullNameFocusedValue ? getOrangeColor : getGreyColor,
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
        ],
      ),
    );
  }
}