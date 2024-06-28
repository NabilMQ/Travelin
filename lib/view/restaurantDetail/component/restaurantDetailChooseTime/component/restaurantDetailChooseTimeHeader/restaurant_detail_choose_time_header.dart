import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class RestaurantDetailChooseTimeHeader extends StatefulWidget {
  const RestaurantDetailChooseTimeHeader({ super.key });

  @override
  State <RestaurantDetailChooseTimeHeader> createState() => _RestaurantDetailChooseTimeHeaderState();
}

class _RestaurantDetailChooseTimeHeaderState extends State<RestaurantDetailChooseTimeHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Waktu",
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