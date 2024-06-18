import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/home/component/popularTravel/popular_travel.dart';
import 'package:travelin/view/home/component/travelCategory/travel_category.dart';
import 'package:travelin/view/home/component/header/background_color_header.dart';
import 'package:travelin/view/home/component/header/background_image_header.dart';
import 'package:travelin/view/home/component/header/search_header.dart';
import 'package:travelin/view/home/component/header/text_header.dart';
import 'package:travelin/view/home/component/travelLocation/travel_location.dart';

class Home extends StatefulWidget {
  const Home({ super.key });

  @override
  State <Home> createState() => _HomeState();
}
// update custom style model
Color homePageBackgroundColor = const Color.fromRGBO(249, 205, 144, 1);
// batas model

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: getWhiteColor,
      body: SingleChildScrollView(
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
              
            Container(
              width: size.width,
              height: size.height * 0.3,
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
              
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  children: [
                    Container(
                      // Another fixed-height child.
                      color: const Color(0xff008000), // Green
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
        
                    Container(
                      // Another fixed-height child.
                      color: const Color(0xff008000), // Green
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
        
                    Container(
                      // Another fixed-height child.
                      color: const Color(0xff008000), // Green
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
        
                    Container(
                      // Another fixed-height child.
                      color: const Color(0xff008000), // Green
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
        
                    Container(
                      // Another fixed-height child.
                      color: const Color(0xff008000), // Green
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}