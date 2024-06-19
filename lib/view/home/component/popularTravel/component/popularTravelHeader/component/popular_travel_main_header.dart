import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class PopularTravelMainHeader extends StatefulWidget {
  const PopularTravelMainHeader({ super.key });

  @override
  State <PopularTravelMainHeader> createState() => _PopularTravelMainHeaderState();
}

class _PopularTravelMainHeaderState extends State<PopularTravelMainHeader> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      child: Container(
        width: size.width,
        height: size.height * 0.05,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Wisata Populer",
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