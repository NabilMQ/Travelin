import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class HotelDetailPolicyHeader extends StatefulWidget {
  const HotelDetailPolicyHeader({ super.key });

  @override
  State <HotelDetailPolicyHeader> createState() => _HotelDetailPolicyHeaderState();
}

class _HotelDetailPolicyHeaderState extends State<HotelDetailPolicyHeader> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Kebijakan Properti",
      style: TextStyle(
        fontSize: 20,
        fontFamily: getCustomFont,
        fontWeight: FontWeight.bold
      )
    );
  }
}