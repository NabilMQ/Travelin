import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class HotelDetailValueRating extends StatefulWidget {
  const HotelDetailValueRating({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <HotelDetailValueRating> createState() => _HotelDetailValueRatingState();
}

class _HotelDetailValueRatingState extends State<HotelDetailValueRating> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: 25,
          child: Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Travelin",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: getBlackColor,
                  fontFamily: getCustomFont,
                ),
              ),
            ),
          ),
        ),

        SizedBox(
          width: size.width,
          height: 20,
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/Logo Icon Orange.svg",
                alignment: Alignment.centerLeft,
                fit: BoxFit.fitHeight,
              ),

              SizedBox(
                width: size.width * 0.05,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "${getTravelStayDataRating(widget.index)}/5",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: getOrangeColor,
                        fontFamily: getCustomFont,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 5),

              SizedBox(
                width: size.width * 0.05,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Bagus",
                      style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.w500,
                        color: getOrangeColor,
                        fontFamily: getCustomFont,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ),

        SizedBox(
          width: size.width,
          height: 20,
          child: Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Dari 100 Review",
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                  color: getGreyColor,
                  fontFamily: getCustomFont,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}