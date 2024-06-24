import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DateOfBirthText extends StatefulWidget {
  const DateOfBirthText({ super.key });

  @override
  State <DateOfBirthText> createState() => _DateOfBirthTextState();
}

class _DateOfBirthTextState extends State<DateOfBirthText> {
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
              "Tanggal Lahir",
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