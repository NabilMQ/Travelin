import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';

class OrderFood extends StatefulWidget {
  const OrderFood({ super.key });

  @override
  State <OrderFood> createState() => _OrderFoodState();
}

class _OrderFoodState extends State<OrderFood> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Pesan Makanan",
          style: TextStyle(
            fontSize: 20,
            color: getBlackColor,
            fontFamily: getCustomFont,
            fontWeight: FontWeight.w600,
          ),
        ),

        ValueListenableBuilder(
          valueListenable: isOrderFood,
          builder: (context, isOrderFoodValue, child) {
            return Transform.scale(
              scale: 0.5,
              child: Switch(
                trackOutlineColor: MaterialStatePropertyAll(isOrderFoodValue ? getOrangeColor : getGreyColor),
                activeTrackColor: isOrderFoodValue ? getOrangeColor : getGreyColor,
                thumbColor: MaterialStatePropertyAll(getWhiteColor),
                value: isOrderFoodValue,
                onChanged: (value) {
                  isOrderFood.value = value;
                },
              ),
            );
          },
        ),
      ],
    );
  }
}