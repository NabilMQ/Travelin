import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class TravelStayContentDescriptionName extends StatefulWidget {
  const TravelStayContentDescriptionName({
    super.key,
    required this.index,
  });

  final int index;

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
            getTravelStayDataName(widget.index),
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