import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/color_controller.dart';

class NearestRestaurantContentDescriptionRating extends StatefulWidget {
  const NearestRestaurantContentDescriptionRating({ Key? key }) : super(key: key);

  @override
  _NearestRestaurantContentDescriptionRatingState createState() => _NearestRestaurantContentDescriptionRatingState();
}

class _NearestRestaurantContentDescriptionRatingState extends State<NearestRestaurantContentDescriptionRating> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Rating: ",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: getGreyColor,
                    fontFamily: getCustomFont,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                children: List.generate(5, (index) {
                  if (index < 4) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: SvgPicture.asset(
                        "assets/icons/Star Orange.svg"
                      ),
                    );
                  }
              
                  return Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: SvgPicture.asset(
                      "assets/icons/Star Gray.svg"
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}