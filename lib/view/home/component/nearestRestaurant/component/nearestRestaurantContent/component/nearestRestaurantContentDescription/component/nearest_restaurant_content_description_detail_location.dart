import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class NearestRestaurantContentDescriptionDetailLocation extends StatefulWidget {
  const NearestRestaurantContentDescriptionDetailLocation({
    super.key,
    required this.index,
  });

  final int index;

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
            getNearestRestaurantDataNear(widget.index),
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