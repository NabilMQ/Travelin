import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/home/home.dart';

class TravelStayContentDescriptionTypeRating extends StatefulWidget {
  const TravelStayContentDescriptionTypeRating({ super.key });

  @override
  State <TravelStayContentDescriptionTypeRating> createState() => _TravelStayContentDescriptionTypeRatingState();
}

class _TravelStayContentDescriptionTypeRatingState extends State<TravelStayContentDescriptionTypeRating> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Expanded(
      flex: 3,
      child: Row(
        children: [
          Container(
            height: size.height,
            width: size.width * 0.14,
            padding: const EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: brighterOrange,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Icon(
                      Icons.hotel,
                      color: getOrangeColor,
                    ),
                  ),
                ),

                SizedBox(width: 5),

                Expanded(
                  flex: 2,
                  child: Text(
                    "Hotel",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: getCustomFont,
                      color: getOrangeColor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 7.5),

          Flexible(
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Row(
                children: List.generate(3, (index) {
                  return SvgPicture.asset(
                    "assets/icons/Star Orange.svg",
                  );
                }),
              ),
            ),
          )
        ],
      )
    );
  }
}