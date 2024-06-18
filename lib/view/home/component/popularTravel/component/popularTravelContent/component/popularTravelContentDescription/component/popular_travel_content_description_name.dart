import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class PopularTravelContentDescriptionName extends StatefulWidget {
  const PopularTravelContentDescriptionName({ super.key });

  @override
  State <PopularTravelContentDescriptionName> createState() => _PopularTravelContentDescriptionNameState();
}

class _PopularTravelContentDescriptionNameState extends State<PopularTravelContentDescriptionName> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Candi Borobudur",
            style: TextStyle(
              fontSize: 15,
              fontFamily: getCustomFont,
              fontWeight: FontWeight.w500,
              color: getBlackColor,
            ),
          ),
        ),
      ),
    );
  }
}