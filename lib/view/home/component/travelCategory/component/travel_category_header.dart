import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class TravelCategoryHeader extends StatefulWidget {
  const TravelCategoryHeader({ super.key });

  @override
  State <TravelCategoryHeader> createState() => _TravelCategoryHeaderState();
}

class _TravelCategoryHeaderState extends State<TravelCategoryHeader> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.05,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Kategori",
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