import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantDetailInformationInformation extends StatefulWidget {
  const RestaurantDetailInformationInformation({
    super.key,
    required this.index,
  });

  final int index;
  
  @override
  State <RestaurantDetailInformationInformation> createState() => _RestaurantDetailInformationInformationState();
}

class _RestaurantDetailInformationInformationState extends State<RestaurantDetailInformationInformation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerRight,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            getNearestRestaurantDataInformation(widget.index),
            style: TextStyle(
              fontSize: 12,
              fontFamily: getCustomFont,
              color: getOrangeColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}