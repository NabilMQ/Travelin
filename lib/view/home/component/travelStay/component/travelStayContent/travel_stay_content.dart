import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayContent/component/travelStayContentDescription/travel_stay_content_description.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayContent/component/travelStayContentImage/travel_stay_content_image.dart';

class TravelStayContent extends StatefulWidget {
  const TravelStayContent({ super.key });

  @override
  State <TravelStayContent> createState() => _TravelStayContentState();
}

class _TravelStayContentState extends State<TravelStayContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(5),
        child: Row(
          children: List.generate(getTravelStayDataLength, (index) {
            return Container(
              width: size.width * 0.75  ,
              height: 240,
              margin: index == getTravelStayDataLength - 1 ? EdgeInsets.zero : const EdgeInsets.only(right: 10),
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
                  TravelStayContentImage(index: index),

                  TravelStayContentDescription(index: index),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}