import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class NearestRestaurantContentDescriptionLocation extends StatefulWidget {
  const NearestRestaurantContentDescriptionLocation({ super.key });

  @override
  State <NearestRestaurantContentDescriptionLocation> createState() => _NearestRestaurantContentDescriptionLocationState();
}

class _NearestRestaurantContentDescriptionLocationState extends State<NearestRestaurantContentDescriptionLocation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "JL. Gajah Mada No. 10",
            style: TextStyle(
              fontSize: 10,
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