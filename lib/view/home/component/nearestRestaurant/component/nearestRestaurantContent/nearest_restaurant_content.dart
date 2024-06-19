import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/component/nearestRestaurantContentDescription/nearest_restaurant_content_description.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/component/nearestRestaurantContentImage/nearest_restaurant_content_image.dart';

class NearestRestaurantContent extends StatefulWidget {
  const NearestRestaurantContent({ super.key });

  @override
  State <NearestRestaurantContent> createState() => _NearestRestaurantContentState();
}

class _NearestRestaurantContentState extends State<NearestRestaurantContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: List.generate(3, (index) {
          return Container(
            width: size.width,
            height: 110,
            margin: const EdgeInsets.only(bottom: 25),
            decoration: BoxDecoration(
              color: getWhiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: getBlackColor.withOpacity(0.25),
                ),  
              ],
            ),
            child: const Row(
              children: [
                  NearestRestaurantContentImage(),

                  NearestRestaurantContentDescription(),
              ],
            ),
          );
        }),
      ),
    );
  }
}