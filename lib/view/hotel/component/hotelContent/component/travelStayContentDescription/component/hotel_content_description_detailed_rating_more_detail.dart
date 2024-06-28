import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class HotelContentDescriptionDetailedRatingMoreDetail extends StatefulWidget {
  const HotelContentDescriptionDetailedRatingMoreDetail({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <HotelContentDescriptionDetailedRatingMoreDetail> createState() => _HotelContentDescriptionDetailedRatingMoreDetailState();
}

class _HotelContentDescriptionDetailedRatingMoreDetailState extends State<HotelContentDescriptionDetailedRatingMoreDetail> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: SvgPicture.asset(
                  "assets/icons/Logo Icon Orange.svg",
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Expanded(
            flex: 8,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "${getTravelStayDataRating(widget.index)}/5 ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        fontFamily: getCustomFont,
                        color: getOrangeColor,
                      ),
                    ),

                    TextSpan(
                      text: "(30 ulasan)",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        fontFamily: getCustomFont,
                        color: getGreyColor,
                      ),
                    )
                  ]
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
                getTravelStayDataType(widget.index) == "Hotel" ? "/kamar/malam" : "/malam",
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                  fontFamily: getCustomFont,
                  color: getGreyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}