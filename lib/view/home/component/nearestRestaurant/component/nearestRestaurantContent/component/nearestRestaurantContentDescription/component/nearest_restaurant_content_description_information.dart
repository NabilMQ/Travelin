import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class NearestRestaurantContentDescriptionInformation extends StatefulWidget {
  const NearestRestaurantContentDescriptionInformation({ super.key });

  @override
  State <NearestRestaurantContentDescriptionInformation> createState() => _NearestRestaurantContentDescriptionInformationState();
}

class _NearestRestaurantContentDescriptionInformationState extends State<NearestRestaurantContentDescriptionInformation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerRight,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Buka",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: getOrangeColor,
              fontFamily: getCustomFont,
            ),
          ),
        ),
      ),
    );
  }
}