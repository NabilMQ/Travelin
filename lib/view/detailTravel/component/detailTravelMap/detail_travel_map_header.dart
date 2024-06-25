import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DetailTravelMapHeader extends StatefulWidget {
  const DetailTravelMapHeader({ super.key });

  @override
  State <DetailTravelMapHeader> createState() => _DetailTravelMapHeaderState();
}

class _DetailTravelMapHeaderState extends State<DetailTravelMapHeader> {
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