import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class HotelDetailMapHeader extends StatefulWidget {
  const HotelDetailMapHeader({ super.key });

  @override
  State <HotelDetailMapHeader> createState() => _HotelDetailMapHeaderState();
}

class _HotelDetailMapHeaderState extends State<HotelDetailMapHeader> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Maps",
      style: TextStyle(
        fontSize: 20,
        fontFamily: getCustomFont,
        fontWeight: FontWeight.bold
      )
    );
  }
}