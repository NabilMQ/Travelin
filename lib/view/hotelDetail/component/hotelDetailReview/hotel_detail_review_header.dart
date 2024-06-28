import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class HotelDetailReviewHeader extends StatefulWidget {
  const HotelDetailReviewHeader({ super.key });

  @override
  State <HotelDetailReviewHeader> createState() => _HotelDetailReviewHeaderState();
}

class _HotelDetailReviewHeaderState extends State<HotelDetailReviewHeader> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Rating & Review",
      style: TextStyle(
        fontSize: 20, 
        fontFamily: getCustomFont, 
        fontWeight: FontWeight.bold
      )
    );
  }
}