import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantDetailMenuContentDescriptionName extends StatefulWidget {
  const RestaurantDetailMenuContentDescriptionName({
    super.key,
    required this.index,
    required this.indexIndex,
  });

  final int index;
  final int indexIndex;

  @override
  State <RestaurantDetailMenuContentDescriptionName> createState() => _RestaurantDetailMenuContentDescriptionNameState();
}

class _RestaurantDetailMenuContentDescriptionNameState extends State<RestaurantDetailMenuContentDescriptionName> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            getNearestRestaurantDataMenuIndexName(widget.index, widget.indexIndex),
            style: TextStyle(
              fontFamily: getCustomFont,
              color: getBlackColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}