import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class TravelStayHeader extends StatefulWidget {
  const TravelStayHeader({ super.key });

  @override
  State <TravelStayHeader> createState() => _TravelStayHeaderState();
}

class _TravelStayHeaderState extends State<TravelStayHeader> {
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
            "Penginapan",
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