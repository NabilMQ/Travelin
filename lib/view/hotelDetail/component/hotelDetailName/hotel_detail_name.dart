import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class HotelDetailName extends StatefulWidget {
  const HotelDetailName({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <HotelDetailName> createState() => _HotelDetailNameState();
}

class _HotelDetailNameState extends State<HotelDetailName> {
  @override
  Widget build(BuildContext context) {
    return Text(
      getTravelStayDataName(widget.index),
      style: TextStyle(
        fontSize: 20, 
        fontFamily: getCustomFont, 
        fontWeight: FontWeight.bold
      ),
    );
  }
}