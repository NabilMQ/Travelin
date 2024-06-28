import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantDetailInformationImage extends StatefulWidget {
  const RestaurantDetailInformationImage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantDetailInformationImage> createState() => _RestaurantDetailInformationImageState();
}

class _RestaurantDetailInformationImageState extends State<RestaurantDetailInformationImage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: FutureBuilder(
        future: getNearestRestaurantDataMainImage(widget.index),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: getBlackColor.withOpacity(0.25),
                  )
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: FractionalOffset.center,
                  image: NetworkImage(
                    snapshot.data.toString(),
                  )
                ),
              ),
            );
          }

          return Container(
            margin: const EdgeInsets.all(20),
            color: getWhiteColor,
            child: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      ),
    );
  }
}