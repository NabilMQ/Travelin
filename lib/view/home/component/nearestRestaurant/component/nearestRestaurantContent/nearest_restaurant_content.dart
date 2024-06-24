import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/component/nearestRestaurantContentDescription/nearest_restaurant_content_description.dart';
import 'package:travelin/view/home/component/nearestRestaurant/component/nearestRestaurantContent/component/nearestRestaurantContentImage/nearest_restaurant_content_image.dart';

class NearestRestaurantContent extends StatefulWidget {
  const NearestRestaurantContent({ super.key });

  @override
  State <NearestRestaurantContent> createState() => _NearestRestaurantContentState();
}

class _NearestRestaurantContentState extends State<NearestRestaurantContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: StreamBuilder(
        stream: getNearestRestaurantStreamData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            processsNearestRestaurantData(snapshot);
            return Column(
              children: List.generate(getNearestRestaurantDataLength, (index) {
                return Container(
                  width: size.width,
                  height: 110,
                  margin: const EdgeInsets.only(bottom: 25),
                  decoration: BoxDecoration(
                    color: getWhiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: getBlackColor.withOpacity(0.25),
                      ),  
                    ],
                  ),
                  child: Row(
                    children: [
                        NearestRestaurantContentImage(index: index),
            
                        NearestRestaurantContentDescription(index: index),
                    ],
                  ),
                );
              }),
            );
          }

          return const FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          );
        }
      ),
    );
  }
}