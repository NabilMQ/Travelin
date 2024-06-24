import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class TravelStayMainHeader extends StatefulWidget {
  const TravelStayMainHeader({ super.key });

  @override
  State <TravelStayMainHeader> createState() => _TravelStayMainHeaderState();
}

class _TravelStayMainHeaderState extends State<TravelStayMainHeader> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: Container(
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
      ),
    );
  }
}