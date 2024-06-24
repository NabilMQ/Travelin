import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class FullNameText extends StatefulWidget {
  const FullNameText({ super.key });

  @override
  State <FullNameText> createState() => _FullNameTextState();
}

class _FullNameTextState extends State<FullNameText> {
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
              "Nama Lengkap",
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