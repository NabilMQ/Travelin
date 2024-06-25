import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';

class DetailTravelName extends StatefulWidget {
  const DetailTravelName({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <DetailTravelName> createState() => _DetailTravelNameState();
}

class _DetailTravelNameState extends State<DetailTravelName> {
  @override
  Widget build(BuildContext context) {
    return Text(
      getTravelDataName(widget.index),
      style: TextStyle(
        fontSize: 20, 
        fontFamily: getCustomFont, 
        fontWeight: FontWeight.bold
      ),
    );
  }
}