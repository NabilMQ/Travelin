import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class BookingHotelSelectDateHeader extends StatefulWidget {
  const BookingHotelSelectDateHeader({ super.key });

  @override
  State <BookingHotelSelectDateHeader> createState() => _BookingHotelSelectDateHeaderState();
}

class _BookingHotelSelectDateHeaderState extends State<BookingHotelSelectDateHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Pilih Tanggal",
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