import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class ChooseNearestRestaurantHeader extends StatefulWidget {
  const ChooseNearestRestaurantHeader({ super.key });

  @override
  State <ChooseNearestRestaurantHeader> createState() => _ChooseNearestRestaurantHeaderState();
}

class _ChooseNearestRestaurantHeaderState extends State<ChooseNearestRestaurantHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Pilih Restaurant Terdekat",
        style: TextStyle(
          fontSize: 15,
          color: getBlackColor,
          fontFamily: getCustomFont,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}