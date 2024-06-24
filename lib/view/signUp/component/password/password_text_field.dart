import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
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
                child: ValueListenableBuilder(
                  valueListenable: isPasswordSignUpHidden,
                  builder: (context, isPasswordSignUpHiddenValue, child) {
                    return TextField(
                      controller: passwordSignUpController,
                      focusNode: passwordSignUpFocus,
                      obscureText: isPasswordSignUpHiddenValue,
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
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              isPasswordSignUpHidden.value = !isPasswordSignUpHidden.value;
                            },
                            child: SvgPicture.asset(
                              isPasswordSignUpHiddenValue ? "assets/icons/Close Eye Black.svg" : "assets/icons/Open Eye Black.svg",
                              fit: BoxFit.scaleDown,
                              colorFilter: isPasswordSignUpErrorValue ? ColorFilter.mode(getRedColor, BlendMode.srcIn) : isPasswordSignUpFocusedValue ? ColorFilter.mode(getOrangeColor, BlendMode.srcIn) : ColorFilter.mode(getGreyColor, BlendMode.srcIn),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: isPasswordSignUpErrorValue? getRedColor : isPasswordSignUpFocusedValue ? getOrangeColor : getGreyColor,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: getCustomFont,  
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}