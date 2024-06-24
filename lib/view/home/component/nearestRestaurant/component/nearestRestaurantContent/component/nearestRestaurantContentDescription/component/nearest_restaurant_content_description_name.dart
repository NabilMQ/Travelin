import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class NearestRestaurantContentDescriptionName extends StatefulWidget {
  const NearestRestaurantContentDescriptionName({
    super.key,
    required this.index,
  });

  final int index;

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
            getNearestRestaurantDataName(widget.index),
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