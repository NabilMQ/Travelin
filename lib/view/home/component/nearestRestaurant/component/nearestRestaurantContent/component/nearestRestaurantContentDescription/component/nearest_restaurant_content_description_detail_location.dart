import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class NearestRestaurantContentDescriptionDetailLocation extends StatefulWidget {
  const NearestRestaurantContentDescriptionDetailLocation({ super.key });

  @override
  State <NearestRestaurantContentDescriptionDetailLocation> createState() => _NearestRestaurantContentDescriptionDetailLocationState();
}

class _NearestRestaurantContentDescriptionDetailLocationState extends State<NearestRestaurantContentDescriptionDetailLocation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Dekat Candi Borobudur",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: getGreyColor,
              fontFamily: getCustomFont,
            ),
          ),
        ),
      ),
    );
  }
}