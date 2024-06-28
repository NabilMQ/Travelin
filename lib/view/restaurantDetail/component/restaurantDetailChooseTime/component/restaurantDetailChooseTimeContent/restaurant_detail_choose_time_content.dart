import 'package:flutter/material.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailChooseTime/component/restaurantDetailChooseTimeContent/component/hider.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailChooseTime/component/restaurantDetailChooseTimeContent/component/row_of_time.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailChooseTime/component/restaurantDetailChooseTimeContent/component/select_time.dart';

class RestaurantDetailChooseTimeContent extends StatefulWidget {
  const RestaurantDetailChooseTimeContent({ super.key });

  @override
  State <RestaurantDetailChooseTimeContent> createState() => _RestaurantDetailChooseTimeContentState();
}

class _RestaurantDetailChooseTimeContentState extends State<RestaurantDetailChooseTimeContent> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 40,
      child: Stack(
        children: [
          const RowOfTime(),

          const Hider(offset: Offset(-65, -10)),

          const Hider(offset: Offset(-65, 10)),

          const SelectTime(),

          Hider(offset: Offset(size.width - 40, 10)),

          Hider(offset: Offset(size.width - 40, -10)),
        ],
      ),
    );
  }
}