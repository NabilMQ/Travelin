import 'package:flutter/material.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/component/nearestRestaurantContentDescription/component/nearest_restaurant_content_description_detail_location.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/component/nearestRestaurantContentDescription/component/nearest_restaurant_content_description_information.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/component/nearestRestaurantContentDescription/component/nearest_restaurant_content_description_location.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/component/nearestRestaurantContentDescription/component/nearest_restaurant_content_description_name.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/component/nearestRestaurantContentDescription/component/nearest_restaurant_content_description_rating.dart';

class NearestRestaurantContentDescription extends StatefulWidget {
  const NearestRestaurantContentDescription({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <NearestRestaurantContentDescription> createState() => _NearestRestaurantContentDescriptionState();
}

class _NearestRestaurantContentDescriptionState extends State<NearestRestaurantContentDescription> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Container(
        width: size.width,
        height: size.height,
        margin: const EdgeInsets.only(
          top: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            NearestRestaurantContentDescriptionName(index: widget.index,),

            NearestRestaurantContentDescriptionLocation(index: widget.index),

            NearestRestaurantContentDescriptionDetailLocation(index: widget.index),

            Expanded(
              flex: 4,
              child: Row(
                children: [
                  NearestRestaurantContentDescriptionRating(index: widget.index),

                  NearestRestaurantContentDescriptionInformation(index: widget.index),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}