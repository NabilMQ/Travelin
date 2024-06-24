import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class EmailText extends StatefulWidget {
  const EmailText({ super.key });

  @override
  State <EmailText> createState() => _EmailTextState();
}

class _EmailTextState extends State<EmailText> {
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
              "Email",
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