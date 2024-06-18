import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/color_controller.dart';

class TravelStayContentDescriptionDetailedRatingMoreDetail extends StatefulWidget {
  const TravelStayContentDescriptionDetailedRatingMoreDetail({ super.key });

  @override
  State <TravelStayContentDescriptionDetailedRatingMoreDetail> createState() => _TravelStayContentDescriptionDetailedRatingMoreDetailState();
}

class _TravelStayContentDescriptionDetailedRatingMoreDetailState extends State<TravelStayContentDescriptionDetailedRatingMoreDetail> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                "assets/icons/Logo Icon Orange.svg",
                fit: BoxFit.scaleDown,
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
                      text: "3,85 ",
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
                "/kamar/malam",
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