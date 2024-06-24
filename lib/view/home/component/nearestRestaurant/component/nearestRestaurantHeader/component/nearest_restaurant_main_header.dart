import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class NearestRestaurantMainHeader extends StatefulWidget {
  const NearestRestaurantMainHeader({ super.key });

  @override
  State <NearestRestaurantMainHeader> createState() => _NearestRestaurantMainHeaderState();
}

class _NearestRestaurantMainHeaderState extends State<NearestRestaurantMainHeader> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: Container(
        width: size.width,
        height: size.height * 0.05,
        padding: const EdgeInsets.symmetric(horizontal: 5),
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
      ),
    );
  }
}