import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class TravelStayContentDescriptionLocationPrice extends StatefulWidget {
  const TravelStayContentDescriptionLocationPrice({ super.key });

  @override
  State <TravelStayContentDescriptionLocationPrice> createState() => _TravelStayContentDescriptionLocationPriceState();
}

class _TravelStayContentDescriptionLocationPriceState extends State<TravelStayContentDescriptionLocationPrice> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.pin_drop,
                color: getGreyColor,
              ),
            ),
          ),

          Expanded(
            flex: 8,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                "1 km dari lokasi Candi Borobudur",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  fontFamily: getCustomFont,
                  color: getGreyColor,
                ),
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerRight,
              child: Text(
                "Rp. 305.000",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: getCustomFont,
                  color: getOrangeColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}