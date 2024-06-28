import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';
import 'package:travelin/view/restaurant/component/restaurantContent/component/restaurant_content_address.dart';
import 'package:travelin/view/restaurant/component/restaurantContent/component/restaurant_content_image.dart';
import 'package:travelin/view/restaurant/component/restaurantContent/component/restaurant_content_information.dart';
import 'package:travelin/view/restaurant/component/restaurantContent/component/restaurant_content_name.dart';
import 'package:travelin/view/restaurant/component/restaurantContent/component/restaurant_content_rating.dart';
import 'package:travelin/view/restaurantDetail/restaurant_detail.dart';

class RestaurantContent extends StatefulWidget {
  const RestaurantContent({ super.key });

  @override
  State <RestaurantContent> createState() => _RestaurantContentState();
}

class _RestaurantContentState extends State<RestaurantContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: List.generate(getNearestRestaurantDataLength, (index) {
        return GestureDetector(
          onTap: () {
            if (getNearestRestaurantDataInformation(index) == "Buka") {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return RestaurantDetail(index: index);
                  },
                ),
              );
            }
          },
          child: Container(
            height: 270,
            width: size.width,
            margin: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: getWhiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: getBlackColor.withOpacity(0.25),
                ),
              ],
            ),
            child: Column(
              children: [
                RestaurantContentImage(index: index),
          
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        RestaurantContentName(index: index),
          
                        RestaurantContentAddress(index: index),
          
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              RestaurantContentRating(index: index),
          
                              RestaurantContentInformation(index: index),
                            ],
                          )
                        ),
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}