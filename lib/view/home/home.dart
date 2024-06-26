import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/customBotNavBar/custom_bot_nav_bar.dart';
import 'package:travelin/view/history/history.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/nearest_restaurant_content.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantHeader/nearest_restaurant_header.dart';
import 'package:travelin/view/home/component/popularTravel/popular_travel.dart';
import 'package:travelin/view/home/component/travelCategory/travel_category.dart';
import 'package:travelin/view/home/component/header/background_color_header.dart';
import 'package:travelin/view/home/component/header/background_image_header.dart';
import 'package:travelin/view/home/component/header/search_header.dart';
import 'package:travelin/view/home/component/header/text_header.dart';
import 'package:travelin/view/home/component/travelLocation/travel_location.dart';
import 'package:travelin/view/home/component/travelStay/travel_stay.dart';

class Home extends StatefulWidget {
  const Home({ super.key });

  @override
  State <Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: getWhiteColor,
      body: Stack(
        children: [
          ValueListenableBuilder(
            valueListenable: customBotNavBarValue,
            builder:(context, value, child) {

              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                setState(() {});
              });

              if (value == 2) {
                return const History();
              }
              return SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(  
                  children: [
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.205,
                      child: const Stack(
                        children: [
                          BackgroundColorHeader(),
              
                          BackgroundImageHeader(),
              
                          TextHeader(),
              
                          SearchHeader(),
                        ],
                      ),
                    ),
                      
                    const TravelLocation(),
                                
                    const TravelCategory(),
                                
                    const PopularTravel(),
                      
                    const TravelStay(),
                      
                    const NearestRestaurantHeader(),
                    
                    const NearestRestaurantContent(),

                    const SizedBox(height: 94),
                  ],
                ),
              );
            },
          ),

          const CustomBotNavBar(),
        ],
      ),
    );
  }
}