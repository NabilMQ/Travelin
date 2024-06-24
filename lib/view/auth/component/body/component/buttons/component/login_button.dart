import 'package:flutter/material.dart';
import 'package:travelin/controller/auth_controller.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/home/home.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({ super.key });

  @override
  State <LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
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
              ),
            ),
            shadowColor: MaterialStatePropertyAll(getTransparentColor),
            backgroundColor: MaterialStatePropertyAll(getOrangeColor),
            foregroundColor: MaterialStatePropertyAll(getOrangeColor),
            overlayColor: MaterialStatePropertyAll(getOrangeColor),
          ),
          onPressed: () async {
            await signUserIn(getEmailController.text, getPasswordController.text).then((value) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Home();
                  },
                )
              );
            });
          },
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Masuk",
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