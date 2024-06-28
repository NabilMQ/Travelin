import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelTicket/bookingHotelTicketDescription/booking_hotel_ticket_description.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelTicket/bookingHotelTicketImage/booking_hotel_ticket_image.dart';
class BookingHotelTicket extends StatefulWidget {
  const BookingHotelTicket({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <BookingHotelTicket> createState() => _BookingHotelTicketState();
}

class _BookingHotelTicketState extends State<BookingHotelTicket> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 220,
      decoration: BoxDecoration(
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: getBlackColor.withOpacity(0.25),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          BookingHotelTicketImage(index: widget.index),

          BookingHotelTicketDescription(index: widget.index),
        ],
      ),
    );
  }
}