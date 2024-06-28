import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class BookingHotelCountHeader extends StatefulWidget {
  const BookingHotelCountHeader({ super.key });

  @override
  State <BookingHotelCountHeader> createState() => _BookingHotelCountHeaderState();
}

class _BookingHotelCountHeaderState extends State<BookingHotelCountHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Jumlah Tamu & Kamar",
        style: TextStyle(
          fontSize: 20,
          color: getBlackColor,
          fontFamily: getCustomFont,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}