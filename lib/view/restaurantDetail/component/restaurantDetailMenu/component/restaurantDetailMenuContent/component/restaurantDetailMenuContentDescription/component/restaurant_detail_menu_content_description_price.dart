import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantDetailMenuContentDescriptionPrice extends StatefulWidget {
  const RestaurantDetailMenuContentDescriptionPrice({
    super.key,
    required this.index,
    required this.indexIndex,
  });

  final int index;
  final int indexIndex;

  @override
  State <RestaurantDetailMenuContentDescriptionPrice> createState() => _RestaurantDetailMenuContentDescriptionPriceState();
}

class _RestaurantDetailMenuContentDescriptionPriceState extends State<RestaurantDetailMenuContentDescriptionPrice> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            NumberFormat.currency(
              locale: 'id',
              symbol: 'Rp ',
              decimalDigits: 0,
            ).format(getNearestRestaurantDataMenuIndexPrice(widget.index, widget.indexIndex)),
            style: TextStyle(
              fontFamily: getCustomFont,
              color: getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Tersedia" ? getOrangeColor : getGreyColor,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}