import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/auth_controller.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({ super.key });

  @override
  State <PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ValueListenableBuilder(
        valueListenable: getIsPasswordError,
        builder: (context, isPasswordErrorValue, child) {
          return ValueListenableBuilder(
            valueListenable: getIsPasswordFocused,
            builder: (context, isPasswordFocusedValue, child) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: isPasswordErrorValue ? getRedColor : isPasswordFocusedValue ? getOrangeColor : getGreyColor,
                      blurRadius: 5,
                      spreadRadius: 0,
                    ),
                  ],
                  color: getWhiteColor,
                ),
                child: Center(
                  child: ValueListenableBuilder(
                    valueListenable: getIsPasswordHidden,
                    builder: (context, isPasswordHiddenValue, child) {
                      return TextField(
                        controller: getPasswordController,
                        focusNode: getPasswordFocus,
                        obscureText: isPasswordHiddenValue,
                        onSubmitted: (value) {
                          if (validatePassword(value)) {
                            getIsPasswordError.value = true;
                          }
                          else {
                            getIsPasswordError.value = false;
                          }
                        },
                        onChanged: (value) {
                          if (!validatePassword(value)) {
                            getIsPasswordError.value = false;
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(15),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10),
                            child: GestureDetector(
                              onTap: () {
                                getIsPasswordHidden.value = !getIsPasswordHidden.value;
                              },
                              child: SvgPicture.asset(
                                isPasswordHiddenValue ? "assets/icons/Close Eye Black.svg" : "assets/icons/Open Eye Black.svg",
                                fit: BoxFit.scaleDown,
                                colorFilter: isPasswordErrorValue ? ColorFilter.mode(getRedColor, BlendMode.srcIn) : isPasswordFocusedValue ? ColorFilter.mode(getOrangeColor, BlendMode.srcIn) : ColorFilter.mode(getGreyColor, BlendMode.srcIn),
                                alignment: Alignment.centerRight,
                              ),
                            ),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: isPasswordErrorValue? getRedColor : isPasswordFocusedValue ? getOrangeColor : getGreyColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: getCustomFont,  
                          ),
                        ),
                      );
                    },
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