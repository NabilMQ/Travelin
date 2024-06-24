import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class SignUpButton extends StatefulWidget {
  const SignUpButton({ super.key });

  @override
  State <SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: getBlackColor.withOpacity(0.25),
              blurRadius: 5,
            ),
          ]
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll(EdgeInsets.all(12.5)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: getOrangeColor),
              ),
            ),
            shadowColor: MaterialStatePropertyAll(getTransparentColor),
            backgroundColor: MaterialStatePropertyAll(getWhiteColor),
            foregroundColor: MaterialStatePropertyAll(getWhiteColor),
            surfaceTintColor: MaterialStatePropertyAll(getWhiteColor),
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder:(context) {
              return const SignUp();
            },));
          },
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Daftar",
                style: TextStyle(
                  color: getOrangeColor,
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