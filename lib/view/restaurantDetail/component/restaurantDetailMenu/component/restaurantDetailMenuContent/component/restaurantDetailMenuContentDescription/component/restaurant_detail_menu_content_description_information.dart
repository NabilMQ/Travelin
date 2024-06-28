import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantDetailMenuContentDescriptionInformation extends StatefulWidget {
  const RestaurantDetailMenuContentDescriptionInformation({
    super.key,
    required this.index,
    required this.indexIndex,
  });

  final int index;
  final int indexIndex;

  @override
  State <RestaurantDetailMenuContentDescriptionInformation>  createState() => _RestaurantDetailMenuContentDescriptionInformationState();
}

class _RestaurantDetailMenuContentDescriptionInformationState extends State<RestaurantDetailMenuContentDescriptionInformation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Align(
        alignment: Alignment.centerRight,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex),
            style: TextStyle(
              fontFamily: getCustomFont,
              color: getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Tersedia" ? getOrangeColor : getGreyColor,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}