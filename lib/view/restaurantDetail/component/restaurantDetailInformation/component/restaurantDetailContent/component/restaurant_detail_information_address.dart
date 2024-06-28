import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantDetailInformationAddress extends StatefulWidget {
  const RestaurantDetailInformationAddress({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantDetailInformationAddress> createState() => _RestaurantDetailInformationAddressState();
}

class _RestaurantDetailInformationAddressState extends State<RestaurantDetailInformationAddress> {
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
              fontSize: 8,
              color: getBlackColor,
              fontWeight: FontWeight.w400,
              fontFamily: getCustomFont,
            ),
          ),
        ),
      ),
    );
  }
}