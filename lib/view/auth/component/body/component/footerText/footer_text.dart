import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class FooterText extends StatefulWidget {
  const FooterText({ super.key });

  @override
  State <FooterText> createState() => _FooterTextState();
}

class _FooterTextState extends State<FooterText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Copyright 2024 - Travelin",
            style: TextStyle(
              color: getBlackColor,
              fontFamily: getCustomFont,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}