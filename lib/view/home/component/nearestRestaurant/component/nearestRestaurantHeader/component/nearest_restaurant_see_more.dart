import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class NearestRestaurantSeeMore extends StatefulWidget {
  const NearestRestaurantSeeMore({ super.key });

  @override
  State <NearestRestaurantSeeMore> createState() => _NearestRestaurantSeeMoreState();
}

class _NearestRestaurantSeeMoreState extends State<NearestRestaurantSeeMore> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      child: Container(
        width: size.width,
        height: size.height * 0.05,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Align(
          alignment: Alignment.centerRight,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "See More",
              style: TextStyle(
                fontSize: 12,
                fontFamily: getCustomFont,
                fontWeight: FontWeight.w600,
                color: getOrangeColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}