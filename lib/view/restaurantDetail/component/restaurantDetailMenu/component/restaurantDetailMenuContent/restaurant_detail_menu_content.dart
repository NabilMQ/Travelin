import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'dart:math';

import 'package:travelin/controller/nearest_restaurant_controller.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailMenu/component/restaurantDetailMenuContent/component/restaurantDetailMenuContentDescription/restaurant_detail_menu_content_description.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailMenu/component/restaurantDetailMenuContent/component/restaurantDetailMenuContentImage/restaurant_detail_menu_content_image.dart';

class RestaurantDetailMenuContent extends StatefulWidget {
  const RestaurantDetailMenuContent({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantDetailMenuContent> createState() => _RestaurantDetailMenuContentState();
}

class _RestaurantDetailMenuContentState extends State<RestaurantDetailMenuContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    
    return SizedBox(
      width: size.width,
      child: Wrap(
        spacing: 30,
        runSpacing: 30,
        alignment: WrapAlignment.spaceBetween,
        children: List.generate(getNearestRestaurantDataMenuLength(widget.index), (index) {
          return Container(
            width: min(180, (size.width * 0.5) - 40),
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: getWhiteColor,
              boxShadow: [
                BoxShadow(
                  color: getBlackColor.withOpacity(0.25),
                  blurRadius: 5,
                )
              ],
            ),
            child: Column(
              children: [
                RestaurantDetailMenuContentImage(
                  index: widget.index,
                  indexIndex: index,
                ),
      
                RestaurantDetailMenuContentDescription(
                  index: widget.index,
                  indexIndex: index,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}