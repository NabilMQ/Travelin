import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class CarouselText extends StatefulWidget {
  const CarouselText({
    super.key,
    required this.text, 
  });

  final String text;

  @override
  State <CarouselText> createState() => _CarouselTextState();
}

class _CarouselTextState extends State<CarouselText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: getBlackColor,
            fontSize: 18,
            fontFamily: getCustomFont,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}