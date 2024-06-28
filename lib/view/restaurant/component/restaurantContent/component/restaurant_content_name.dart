import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantContentName extends StatefulWidget {
  const RestaurantContentName({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantContentName> createState() => _RestaurantContentNameState();
}

class _RestaurantContentNameState extends State<RestaurantContentName> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            getNearestRestaurantDataName(widget.index),
            style: TextStyle(
              fontSize: 15,
              fontFamily: getCustomFont,
              color: getBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}