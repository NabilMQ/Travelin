import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class NearestRestaurantContentDescriptionName extends StatefulWidget {
  const NearestRestaurantContentDescriptionName({ super.key });

  @override
  State <NearestRestaurantContentDescriptionName> createState() => _NearestRestaurantContentDescriptionNameState();
}

class _NearestRestaurantContentDescriptionNameState extends State<NearestRestaurantContentDescriptionName> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Restaurant Chinese Food",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: getBlackColor,
              fontFamily: getCustomFont,
            ),
          ),
        ),
      ),
    );
  }
}