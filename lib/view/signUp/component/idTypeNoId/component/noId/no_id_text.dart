import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class NoIdText extends StatefulWidget {
  const NoIdText({ super.key });

  @override
  State <NoIdText> createState() => _NoIdTextState();
}

class _NoIdTextState extends State<NoIdText> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 7,
      child: SizedBox(
        width: size.width,
        child: Align(
          alignment: Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Nomor ID",
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