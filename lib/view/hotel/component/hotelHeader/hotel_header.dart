import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class HotelHeader extends StatefulWidget {
  const HotelHeader({ super.key });

  @override
  State <HotelHeader> createState() => _HotelHeaderState();
}

class _HotelHeaderState extends State<HotelHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          "Pilih Penginapan  Terdekat",
          style: TextStyle(
            fontSize: 20,
            color: getBlackColor,
            fontFamily: getCustomFont,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}