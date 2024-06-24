import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class TelephoneNumberText extends StatefulWidget {
  const TelephoneNumberText({ super.key });

  @override
  State <TelephoneNumberText> createState() => _TelephoneNumberTextState();
}

class _TelephoneNumberTextState extends State<TelephoneNumberText> {
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
              "No Telepon",
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