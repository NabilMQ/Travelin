import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantContentInformation extends StatefulWidget {
  const RestaurantContentInformation({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantContentInformation> createState() => _RestaurantContentInformationState();
}

class _RestaurantContentInformationState extends State<RestaurantContentInformation> {
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
              fontSize: 15,
              fontFamily: getCustomFont,
              color: getNearestRestaurantDataInformation(widget.index) == "Buka" ? getOrangeColor : getGreyColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}