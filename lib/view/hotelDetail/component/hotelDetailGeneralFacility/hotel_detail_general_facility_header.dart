import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class HotelDetailGeneralFacilityHeader extends StatefulWidget {
  const HotelDetailGeneralFacilityHeader({ super.key });

  @override
  State <HotelDetailGeneralFacilityHeader> createState() => _HotelDetailGeneralFacilityHeaderState();
}

class _HotelDetailGeneralFacilityHeaderState extends State<HotelDetailGeneralFacilityHeader> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Fasilitas Umum",
      style: TextStyle(
        fontSize: 20, 
        fontFamily: getCustomFont, 
        fontWeight: FontWeight.bold
      )
    );
  }
}