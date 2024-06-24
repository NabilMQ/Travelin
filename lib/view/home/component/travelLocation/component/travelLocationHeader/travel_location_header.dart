import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class TravelLocationHeader extends StatefulWidget {
  const TravelLocationHeader({ super.key });

  @override
  State <TravelLocationHeader> createState() => _TravelLocationHeaderState();
}

class _TravelLocationHeaderState extends State<TravelLocationHeader> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.05,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Lokasi Wisata",
            style: TextStyle(
              fontSize: 20,
              fontFamily: getCustomFont,
              fontWeight: FontWeight.w600,
              color: getBlackColor,
            ),
          ),
        ),
      ),
    );
  }
}