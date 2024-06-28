import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantContentAddress extends StatefulWidget {
  const RestaurantContentAddress({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantContentAddress> createState() => _RestaurantContentAddressState();
}

class _RestaurantContentAddressState extends State<RestaurantContentAddress> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            getNearestRestaurantDataAddress(widget.index),
            style: TextStyle(
              fontSize: 8,
              fontFamily: getCustomFont,
              color: getBlackColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}