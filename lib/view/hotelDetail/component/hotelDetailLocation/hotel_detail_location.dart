import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class HotelDetailLocation extends StatefulWidget {
  const HotelDetailLocation({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <HotelDetailLocation>createState() => _HotelDetailLocationState();
}

class _HotelDetailLocationState extends State<HotelDetailLocation> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 15,
      child: Row(
        children: [
          Flexible(
            child: SvgPicture.asset(
              "assets/icons/Pointer.svg",
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerLeft,
              colorFilter: ColorFilter.mode(getOrangeColor, BlendMode.srcIn),
            )
          ),
          
          const SizedBox(width: 10),
      
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  getTravelStayDataLocation(widget.index),
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: getCustomFont,
                    color: getBlackColor
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}