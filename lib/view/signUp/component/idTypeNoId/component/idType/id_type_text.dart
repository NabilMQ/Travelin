import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class IdTypeText extends StatefulWidget {
  const IdTypeText({ super.key });

  @override
  State <IdTypeText> createState() => _IdTypeTextState();
}

class _IdTypeTextState extends State<IdTypeText> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: SizedBox(
        width: size.width,
        child: Align(
          alignment: Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Tipe ID",
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