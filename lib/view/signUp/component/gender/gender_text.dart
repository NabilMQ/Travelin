import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class GenderText extends StatefulWidget {
  const GenderText({ super.key });

  @override
  State <GenderText> createState() => _GenderTextState();
}

class _GenderTextState extends State<GenderText> {
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
              "Jenis Kelamin",
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