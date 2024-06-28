import 'package:flutter/material.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelTicket/bookingHotelTicketDescription/component/booking_hotel_ticket_description_name.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelTicket/bookingHotelTicketDescription/component/booking_hotel_ticket_description_type_rating.dart';

class BookingHotelTicketDescription extends StatefulWidget {
  const BookingHotelTicketDescription({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <BookingHotelTicketDescription> createState() => _BookingHotelTicketDescriptionState();
}

class _BookingHotelTicketDescriptionState extends State<BookingHotelTicketDescription> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Column(
          children: [
            BookingHotelTicketDescriptionName(index: widget.index),
        
            BookingHotelTicketDescriptionTypeRating(index: widget.index),
          ],
        ),
      )
    );
  }
}