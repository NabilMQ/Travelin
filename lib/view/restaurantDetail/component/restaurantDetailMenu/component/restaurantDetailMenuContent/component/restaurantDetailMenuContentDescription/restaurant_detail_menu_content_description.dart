import 'package:flutter/material.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailMenu/component/restaurantDetailMenuContent/component/restaurantDetailMenuContentDescription/component/restaurant_detail_menu_content_description_information.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailMenu/component/restaurantDetailMenuContent/component/restaurantDetailMenuContentDescription/component/restaurant_detail_menu_content_description_name.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailMenu/component/restaurantDetailMenuContent/component/restaurantDetailMenuContentDescription/component/restaurant_detail_menu_content_description_price.dart';

class RestaurantDetailMenuContentDescription extends StatefulWidget {
  const RestaurantDetailMenuContentDescription({
    super.key,
    required this.index,
    required this.indexIndex,
  });

  final int index;
  final int indexIndex;

  @override
  State <RestaurantDetailMenuContentDescription> createState() => _RestaurantDetailMenuContentDescriptionState();
}

class _RestaurantDetailMenuContentDescriptionState extends State<RestaurantDetailMenuContentDescription> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(7.5),
        child: Column(
          children: [
            RestaurantDetailMenuContentDescriptionName(
              index: widget.index,
              indexIndex: widget.indexIndex,
            ),
        
            const SizedBox(height: 2.5),
        
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  RestaurantDetailMenuContentDescriptionPrice(
                    index: widget.index,
                    indexIndex: widget.indexIndex,
                  ),
        
                  RestaurantDetailMenuContentDescriptionInformation(
                    index: widget.index,
                    indexIndex: widget.indexIndex,
                  )
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}