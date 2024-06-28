import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/bookingHotel/booking_hotel.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelCount/bookingHotelCountContent/component/booking_hotel_count_content_content.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';

class BookingHotelCountContent extends StatefulWidget {
  const BookingHotelCountContent({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <BookingHotelCountContent> createState() => _BookingHotelCountContentState();
}

class _BookingHotelCountContentState extends State<BookingHotelCountContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 148,
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: getBlackColor.withOpacity(0.25),
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: BookingHotelCountContentContent(
              svg: "assets/icons/Bed.svg",
              valueNotifier: roomCount,
              index: widget.index,
              text: "Kamar",
              isRoom: true,
            ),
          ),

          Expanded(
            flex: 1,
            child: BookingHotelCountContentContent(
              svg: "assets/icons/People.svg",
              valueNotifier: adultTicketHotelCount,
              index: widget.index,
              text: "Dewasa",
              isRoom: false,
            ),
          ),

          Expanded(
            flex: 1,
            child: BookingHotelCountContentContent(
              svg: "assets/icons/Child.svg",
              valueNotifier: childTicketHotelCount,
              index: widget.index,
              text: "Anak",
              isRoom: false,
            ),
          ),
        ],
      ),
    );
  }
}