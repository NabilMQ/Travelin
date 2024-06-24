import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class NearestRestaurantContentDescriptionLocation extends StatefulWidget {
  const NearestRestaurantContentDescriptionLocation({
    super.key,
    required this.index,
  });

  final int index;

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
            getNearestRestaurantDataAddress(widget.index),
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