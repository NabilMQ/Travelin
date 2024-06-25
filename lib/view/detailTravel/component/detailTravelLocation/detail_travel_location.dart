import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';

class DetailTravelLocation extends StatefulWidget {
  const DetailTravelLocation({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <DetailTravelLocation>createState() => _DetailTravelLocationState();
}

class _DetailTravelLocationState extends State<DetailTravelLocation> {
  @override
  Widget build(BuildContext context) {
    return Text(
      getTravelDataLocation(widget.index),
      style: TextStyle(
        fontSize: 10,
        fontFamily: getCustomFont,
        color: getBlackColor
      ),
    );
  }
}