import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class PopularTravelContentDescriptionButton extends StatefulWidget {
  const PopularTravelContentDescriptionButton({ super.key, required this.index });

  final int index;
  
  @override
  State <PopularTravelContentDescriptionButton> createState() => _PopularTravelContentDescriptionButtonState();
}

class _PopularTravelContentDescriptionButtonState extends State<PopularTravelContentDescriptionButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton(
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          backgroundColor: MaterialStatePropertyAll(getOrangeColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
          onPressed: null,
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Buy Now",
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: getCustomFont,
                  fontWeight: FontWeight.w500,
                  color: getWhiteColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}