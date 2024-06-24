import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/component/popularTravelContentDescription/popular_travel_content_description.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/component/popularTravelContentIcon/popular_travel_content_icon.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/component/popularTravelContentImage/popular_travel_content_image.dart';

class PopularTravelContent extends StatefulWidget {
  const PopularTravelContent({ super.key });

  @override
  State <PopularTravelContent> createState() => _PopularTravelContentState();
}

class _PopularTravelContentState extends State<PopularTravelContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(5),
        child: Row(
          children: List.generate(getTravelDataLength, (index) {
            return Container(
              width: size.width * 0.75  ,
              height: 200,
              margin: index == getTravelDataLength - 1 ? EdgeInsets.zero : const EdgeInsets.only(right: 10),
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
              child: Stack(
                children: [
                  PopularTravelContentImage(index: index),

                  Container(
                    width: size.width,
                    height: size.height,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        PopularTravelContentIcon(index: index),

                        PopularTravelContentDescription(index: index),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}