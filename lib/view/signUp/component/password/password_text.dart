import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class PasswordText extends StatefulWidget {
  const PasswordText({ super.key });

  @override
  State <PasswordText> createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 1,
      child: SizedBox(
        width: size.width,
        child: Align(
          alignment: Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Password",
              style: TextStyle(
                fontSize: 12,
                fontFamily: getCustomFont,
                color: getBlackColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}