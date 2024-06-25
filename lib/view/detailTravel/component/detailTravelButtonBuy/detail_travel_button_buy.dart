import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DetailTravelButtonBuy extends StatefulWidget {
  const DetailTravelButtonBuy({ super.key });

  @override
  State <DetailTravelButtonBuy> createState() => _DetailTravelButtonBuyState();
}

class _DetailTravelButtonBuyState extends State<DetailTravelButtonBuy> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
          backgroundColor: getOrangeColor,
          foregroundColor: getWhiteColor,
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          "Buy Now",
          style: TextStyle(
            fontSize: 20, 
            fontFamily: getCustomFont
          ),
        ),
      ),
    );
  }
}