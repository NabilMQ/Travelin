import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class RestaurantDetailMenuHeader extends StatefulWidget {
  const RestaurantDetailMenuHeader({ super.key });

  @override
  State <RestaurantDetailMenuHeader> createState() => _RestaurantDetailMenuHeaderState();
}

class _RestaurantDetailMenuHeaderState extends State<RestaurantDetailMenuHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Makanan",
        style: TextStyle(
          fontSize: 20,
          color: getBlackColor,
          fontFamily: getCustomFont,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}