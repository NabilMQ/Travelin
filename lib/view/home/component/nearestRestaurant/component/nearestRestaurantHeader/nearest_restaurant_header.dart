import 'package:flutter/material.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantHeader/component/nearest_restaurant_main_header.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantHeader/component/nearest_restaurant_see_more.dart';

class NearestRestaurantHeader extends StatefulWidget {
  const NearestRestaurantHeader({ super.key });

  @override
  State <NearestRestaurantHeader> createState() => _NearestRestaurantHeaderState();
}

class _NearestRestaurantHeaderState extends State<NearestRestaurantHeader> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          NearestRestaurantMainHeader(),
      
          NearestRestaurantSeeMore(),
        ],
      ),
    );
  }
}