import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class CarouselStaticText extends StatefulWidget {
  const CarouselStaticText({ super.key });

  @override
  State <CarouselStaticText> createState() => _CarouselStaticTextState();
}

class _CarouselStaticTextState extends State<CarouselStaticText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          "Dapatkan penawaran spesial dan promo\nmenarik untuk liburan Anda",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: getBlackColor,
            fontSize: 12,
            fontFamily: getCustomFont,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}