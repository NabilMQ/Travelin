import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class PopularTravelContentDescriptionPrice extends StatefulWidget {
  const PopularTravelContentDescriptionPrice  ({ super.key });

  @override
  State <PopularTravelContentDescriptionPrice> createState() => _PopularTravelContentDescriptionPriceState();
}

class _PopularTravelContentDescriptionPriceState extends State<PopularTravelContentDescriptionPrice> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,  
      child: Align(
        alignment: Alignment.centerRight,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Rp. 100.000",
            style: TextStyle(
              fontSize: 12,
              fontFamily: getCustomFont,
              fontWeight: FontWeight.w600,
              color: getOrangeColor,
            ),
          ),
        ),
      ),
    );
  }
}