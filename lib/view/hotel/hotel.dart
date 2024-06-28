import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/customBotNavBar/custom_bot_nav_bar.dart';
import 'package:travelin/view/hotel/component/hotelAppBar/hotel_app_bar.dart';
import 'package:travelin/view/hotel/component/hotelContent/hotel_content.dart';
import 'package:travelin/view/hotel/component/hotelHeader/hotel_header.dart';
import 'package:travelin/view/hotel/component/hotelSearch/hotel_search.dart';

class Hotel extends StatefulWidget {
  const Hotel({ super.key });

  @override
  State <Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
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
                    HotelSearch(),

                    HotelHeader(),

                    HotelContent(),
                  ],
                ),
              ),
            ),
            
            HotelAppBar(),
          ],
        ),
      ),
    );
  }
}