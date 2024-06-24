import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class NearestRestaurantContentDescriptionRating extends StatefulWidget {
  const NearestRestaurantContentDescriptionRating({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <NearestRestaurantContentDescriptionRating> createState() => _NearestRestaurantContentDescriptionRatingState();
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
            child: Row(
              children: List.generate(5, (index) {
                if (index < getNearestRestaurantDataRating(widget.index)) {
                  return Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: SvgPicture.asset(
                        "assets/icons/Star Orange.svg",
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  );
                }
            
                return Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: SvgPicture.asset(
                      "assets/icons/Star Gray.svg",
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}