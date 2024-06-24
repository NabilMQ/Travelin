import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class TravelStaySeeMore extends StatefulWidget {
  const TravelStaySeeMore({ super.key });

  @override
  State <TravelStaySeeMore> createState() => _TravelStaySeeMoreState();
}

class _TravelStaySeeMoreState extends State<TravelStaySeeMore> {
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