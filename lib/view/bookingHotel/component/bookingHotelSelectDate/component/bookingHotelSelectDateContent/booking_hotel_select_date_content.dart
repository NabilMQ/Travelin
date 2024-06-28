import 'package:flutter/material.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelSelectDate/component/bookingHotelSelectDateContent/component/blocker.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelSelectDate/component/bookingHotelSelectDateContent/component/row_of_date.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelSelectDate/component/bookingHotelSelectDateContent/component/select_date.dart';

class BookingHotelSelectDateContent extends StatefulWidget {
  const BookingHotelSelectDateContent({ super.key });

  @override
  State <BookingHotelSelectDateContent> createState() => _BookingHotelSelectDateContentState();
}

class _BookingHotelSelectDateContentState extends State<BookingHotelSelectDateContent> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 40,
      child: Stack(
        children: [
          const RowOfDate(),

          const Blocker(offset: Offset(-65, -10)),

          const Blocker(offset: Offset(-65, 10)),

          const SelectDate(),

          Blocker(offset: Offset(size.width - 40, 10)),

          Blocker(offset: Offset(size.width - 40, -10)),
        ],
      ),
    );
  }
}