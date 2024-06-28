import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class RestaurantHeader extends StatefulWidget {
  const RestaurantHeader({ super.key });

  @override
  State <RestaurantHeader> createState() => _RestaurantHeaderState();
}

class _RestaurantHeaderState extends State<RestaurantHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          "Pilih Restaurant Terdekat",
          style: TextStyle(
            fontSize: 20,
            color: getBlackColor,
            fontFamily: getCustomFont,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}