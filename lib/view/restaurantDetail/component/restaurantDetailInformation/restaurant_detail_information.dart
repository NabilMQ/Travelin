import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailInformation/component/restaurantDetailContent/restaurant_detail_content.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailInformation/component/restaurantDetailImage/restaurant_detail_information_image.dart';

class RestaurantDetailInformation extends StatefulWidget {
  const RestaurantDetailInformation({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantDetailInformation> createState() => _RestaurantDetailInformationState();
}

class _RestaurantDetailInformationState extends State<RestaurantDetailInformation> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 125,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: getBlackColor.withOpacity(0.25),
          ),
        ],
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [
          RestaurantDetailInformationImage(index: widget.index),

          RestaurantDetailContent(index: widget.index),
        ],
      ),
    );
  }
}