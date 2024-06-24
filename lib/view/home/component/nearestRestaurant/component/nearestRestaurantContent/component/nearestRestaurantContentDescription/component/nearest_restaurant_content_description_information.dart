import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class NearestRestaurantContentDescriptionInformation extends StatefulWidget {
  const NearestRestaurantContentDescriptionInformation({
    super.key,
    required this.index,
  });

  final int index;

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
            getNearestRestaurantDataInformation(widget.index),
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