import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class TravelStayContentDescriptionName extends StatefulWidget {
  const TravelStayContentDescriptionName({ super.key });

  @override
  State <TravelStayContentDescriptionName> createState() => _TravelStayContentDescriptionNameState();
}

class _TravelStayContentDescriptionNameState extends State<TravelStayContentDescriptionName> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Plataran Heritage Borobudur Hotel",
            style: TextStyle(
              fontSize: 15,
              fontFamily: getCustomFont,
              fontWeight: FontWeight.w500,
              color: getBlackColor,
            ),
          ),
        ),
      ),
    );
  }
}