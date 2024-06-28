import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class BookingHotelTicketDescriptionTypeRating extends StatefulWidget {
  const BookingHotelTicketDescriptionTypeRating({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <BookingHotelTicketDescriptionTypeRating> createState() => _BookingHotelTicketDescriptionTypeRatingState();
}

class _BookingHotelTicketDescriptionTypeRatingState extends State<BookingHotelTicketDescriptionTypeRating> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 25,
      width: size.width,
      child: Row(
        children: [
          Container(
            height: size.height,
            width: size.width * 0.14,
            padding: const EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: getBrighterOrange,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox.expand(
                    child: SvgPicture.asset(
                      "assets/icons/Hotel.svg",
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(width: 5),

                Expanded(
                  flex: 2,
                  child: Text(
                    getTravelStayDataType(widget.index),
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: getCustomFont,
                      color: getOrangeColor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 7.5),

          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                children: List.generate(getTravelStayDataRating(widget.index), (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 0,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Star Orange.svg",
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      )
    );
  }
}