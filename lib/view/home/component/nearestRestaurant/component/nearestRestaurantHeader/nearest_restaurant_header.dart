import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class NearestRestaurantHeader extends StatefulWidget {
  const NearestRestaurantHeader({ super.key });

  @override
  State <NearestRestaurantHeader> createState() => _NearestRestaurantHeaderState();
}

class _NearestRestaurantHeaderState extends State<NearestRestaurantHeader> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.05,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Restoran Terdekat",
            style: TextStyle(
              fontSize: 20,
              fontFamily: getCustomFont,
              fontWeight: FontWeight.w600,
              color: getBlackColor,
            ),
          ),
        ),
      ),
    );
  }
}