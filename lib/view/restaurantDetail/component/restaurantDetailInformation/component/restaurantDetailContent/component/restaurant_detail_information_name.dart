import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantDetailInformationName extends StatefulWidget {
  const RestaurantDetailInformationName({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantDetailInformationName> createState() => _RestaurantDetailInformationNameState();
}

class _RestaurantDetailInformationNameState extends State<RestaurantDetailInformationName> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            getNearestRestaurantDataName(widget.index),
            style: TextStyle(
              fontSize: 20,
              color: getBlackColor,
              fontWeight: FontWeight.w600,
              fontFamily: getCustomFont,
            ),
          ),
        ),
      ),
    );
  }
}