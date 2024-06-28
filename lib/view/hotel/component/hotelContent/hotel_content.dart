import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';
import 'package:travelin/view/hotel/component/hotelContent/component/travelStayContentDescription/hotel_content_description.dart';
import 'package:travelin/view/hotel/component/hotelContent/component/travelStayContentImage/hotel_content_image.dart';
import 'package:travelin/view/hotelDetail/hotel_detail.dart';

class HotelContent extends StatefulWidget {
  const HotelContent({ super.key });

  @override
  State <HotelContent> createState() => _HotelContentState();
}

class _HotelContentState extends State<HotelContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: List.generate(getTravelStayDataLength, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return HotelDetail(index: index);
                },
              ),
            );
          },
          child: Container(
            width: size.width,
            height: 240,
            margin: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: getWhiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: getBlackColor.withOpacity(0.25),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                HotelContentImage(index: index),
              
                HotelContentDescription(index: index),
              ],
            ),
          ),
        );
      }),
    );
  }
}