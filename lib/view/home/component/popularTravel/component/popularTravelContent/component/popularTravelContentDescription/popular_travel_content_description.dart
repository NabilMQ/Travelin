import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/component/popularTravelContentDescription/component/popular_travel_content_description_button.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/component/popularTravelContentDescription/component/popular_travel_content_description_detail.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/component/popularTravelContentDescription/component/popular_travel_content_description_name.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/component/popularTravelContentDescription/component/popular_travel_content_description_price.dart';

class PopularTravelContentDescription extends StatefulWidget {
  const PopularTravelContentDescription({ super.key });

  @override
  State <PopularTravelContentDescription> createState() => _PopularTravelContentDescriptionState();
}

class _PopularTravelContentDescriptionState extends State<PopularTravelContentDescription> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: size.width * 0.6,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: getWhiteColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Column(
            children: [
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    PopularTravelContentDescriptionName(),

                    SizedBox(width: 10),

                    PopularTravelContentDescriptionPrice(),
                  ],
                ),
              ),

              Expanded(
                flex: 6,
                child: Row(
                  children: [
                    PopularTravelContentDescriptionDetail(),

                    SizedBox(width: 10),
                    
                    PopularTravelContentDescriptionButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}