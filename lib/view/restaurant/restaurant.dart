import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/restaurant/component/restaurantAppBar/restaurant_app_bar.dart';
import 'package:travelin/view/restaurant/component/restaurantContent/restaurant_content.dart';
import 'package:travelin/view/restaurant/component/restaurantHeader/restaurant_header.dart';
import 'package:travelin/view/restaurant/component/restaurantSearch/restaurant_search.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({ super.key });

  @override
  State <Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getWhiteColor,
      body: const SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 66,
                ),
                child: Column(
                  children: [
                    RestaurantSearch(),

                    RestaurantHeader(),

                    RestaurantContent(),
                  ],
                ),
              ),
            ),
            
            RestaurantAppBar(),
          ],
        ),
      ),
    );
  }
}