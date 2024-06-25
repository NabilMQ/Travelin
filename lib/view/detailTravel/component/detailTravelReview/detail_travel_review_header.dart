import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DetailTravelReviewHeader extends StatefulWidget {
  const DetailTravelReviewHeader({ super.key });

  @override
  State <DetailTravelReviewHeader> createState() => _DetailTravelReviewHeaderState();
}

class _DetailTravelReviewHeaderState extends State<DetailTravelReviewHeader> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Review",
      style: TextStyle(
        fontSize: 20, 
        fontFamily: getCustomFont, 
        fontWeight: FontWeight.bold
      )
    );
  }
}