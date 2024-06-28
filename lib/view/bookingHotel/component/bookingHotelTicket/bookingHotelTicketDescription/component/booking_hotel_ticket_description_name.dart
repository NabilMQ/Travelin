import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class BookingHotelTicketDescriptionName extends StatefulWidget {
  const   BookingHotelTicketDescriptionName({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <BookingHotelTicketDescriptionName> createState() => _BookingHotelTicketDescriptionNameState();
}

class _BookingHotelTicketDescriptionNameState extends State<BookingHotelTicketDescriptionName> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            getTravelStayDataName(widget.index),
            style: TextStyle(
              fontSize: 20,
              fontFamily: getCustomFont,
              fontWeight: FontWeight.w600,
              color: getBlackColor,
            ),
          ),
        ),
      ),
    );
  }
}