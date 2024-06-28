import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantContentRating extends StatefulWidget {
  const RestaurantContentRating({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantContentRating> createState() => _RestaurantContentRatingState();
}

class _RestaurantContentRatingState extends State<RestaurantContentRating> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rating: ",
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: getCustomFont,
                    color: getBlackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          Flexible(
            flex: 1,
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
          ),
        ],
      )
    );
  }
}