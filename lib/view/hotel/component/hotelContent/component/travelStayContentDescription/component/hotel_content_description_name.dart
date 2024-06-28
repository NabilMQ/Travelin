import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class HotelContentDescriptionName extends StatefulWidget {
  const HotelContentDescriptionName({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <HotelContentDescriptionName> createState() => _HotelContentDescriptionNameState();
}

class _HotelContentDescriptionNameState extends State<HotelContentDescriptionName> {
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