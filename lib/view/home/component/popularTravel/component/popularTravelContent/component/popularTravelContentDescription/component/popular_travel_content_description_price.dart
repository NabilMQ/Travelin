import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';
import 'package:intl/intl.dart';

class PopularTravelContentDescriptionPrice extends StatefulWidget {
  const PopularTravelContentDescriptionPrice  ({
    super.key, 
    required this.index 
  });

  final int index;
  
  @override
  State <PopularTravelContentDescriptionPrice> createState() => _PopularTravelContentDescriptionPriceState();
}

class _PopularTravelContentDescriptionPriceState extends State<PopularTravelContentDescriptionPrice> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,  
      child: Align(
        alignment: Alignment.centerRight,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            NumberFormat.currency(
              locale: 'id',
              symbol: 'Rp ',
              decimalDigits: 0,
            ).format(int.parse(getTravelDataPrice(widget.index))),
            style: TextStyle(
              fontSize: 12,
              fontFamily: getCustomFont,
              fontWeight: FontWeight.w600,
              color: getOrangeColor,
            ),
          ),
        ),
      ),
    );
  }
}