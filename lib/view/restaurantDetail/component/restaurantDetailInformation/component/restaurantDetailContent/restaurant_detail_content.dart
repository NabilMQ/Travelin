import 'package:flutter/material.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailInformation/component/restaurantDetailContent/component/restaurant_detail_information_address.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailInformation/component/restaurantDetailContent/component/restaurant_detail_information_information.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailInformation/component/restaurantDetailContent/component/restaurant_detail_information_name.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailInformation/component/restaurantDetailContent/component/restaurant_detail_information_rating.dart';

class RestaurantDetailContent extends StatefulWidget {
  const RestaurantDetailContent({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantDetailContent> createState() => _RestaurantDetailContentState();
}

class _RestaurantDetailContentState extends State<RestaurantDetailContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            RestaurantDetailInformationName(index: widget.index),

            RestaurantDetailInformationAddress(index: widget.index),

            Expanded(
              flex: 2,
              child: Row(
                children: [
                  RestaurantDetailInformationRating(index: widget.index),

                  RestaurantDetailInformationInformation(index: widget.index),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}