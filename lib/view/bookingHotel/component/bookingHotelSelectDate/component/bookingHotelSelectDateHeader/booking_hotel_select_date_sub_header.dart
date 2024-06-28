import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class BookingHotelSelectDateSubHeader extends StatefulWidget {
  const BookingHotelSelectDateSubHeader({ super.key });

  @override
  State <BookingHotelSelectDateSubHeader> createState() => _BookingHotelSelectDateSubHeaderState();
}

class _BookingHotelSelectDateSubHeaderState extends State<BookingHotelSelectDateSubHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Waktu Penginapan",
        style: TextStyle(
          fontSize: 15,
          color: getBlackColor,
          fontFamily: getCustomFont,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}