import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelAppBar/booking_hotel_app_bar.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelCount/bookingHotelCountContent/booking_hotel_count_content.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelCount/bookingHotelCountHeader/booking_hotel_count_header.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelSelectDate/component/bookingHotelSelectDateContent/booking_hotel_select_date_content.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelSelectDate/component/bookingHotelSelectDateHeader/booking_hotel_select_date_header.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelSelectDate/component/bookingHotelSelectDateHeader/booking_hotel_select_date_sub_header.dart';
import 'package:travelin/view/bookingHotel/component/bookingHotelTicket/booking_hotel_ticket.dart';
import 'package:travelin/view/bookingHotel/component/room/room.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';

class BookingHotel extends StatefulWidget {
  const BookingHotel({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <BookingHotel> createState() => _BookingHotelState();
}
// model

ValueNotifier <int> adultTicketHotelCount = ValueNotifier <int> (0);
ValueNotifier <int> childTicketHotelCount = ValueNotifier <int> (0);
ValueNotifier <int> roomCount = ValueNotifier <int> (1);
ValueNotifier <int> sumHotelTicket = ValueNotifier <int> (0);

ScrollController selectRangeDate = ScrollController();

ValueNotifier <DateTimeRange> rangeDate = ValueNotifier <DateTimeRange> (
  DateTimeRange(
    start: ticketDate.value,
    end: ticketDate.value,
  ),
);

DateTimeRange choosedRangeDate = DateTimeRange(
  start: ticketDate.value,
  end: ticketDate.value,
);
ValueNotifier <int> addItemSelectRangeDate = ValueNotifier <int> (0);

bool isSameDate(DateTime first, DateTime second) {
  if (first.day == second.day && first.month == second.month && first.year == second.year) {
    return true;
  }

  return false;
}

void addSelectRangeDateScrollControllerListener() async {
  if (selectRangeDate.position.atEdge) {
    bool isTop = selectRangeDate.position.pixels == 0;
    if (!isTop) {
      Future.delayed(const Duration(seconds: 1), () {
        addItemSelectRangeDate.value += 10;
      });
      debugPrint(addItemSelectRangeDate.value.toString());
    }
  }
}

String toDayName(int dayNum) {
  if (dayNum == 1) {
    return "Senin";
  }

  if (dayNum == 2) {
    return "Selasa";
  }

  if (dayNum == 3) {
    return "Rabu";
  }

  if (dayNum == 4) {
    return "Kamis";
  }

  if (dayNum == 5) {
    return "Jumat";
  }
  
  if (dayNum == 6) {
    return "Sabtu";
  }

  return "Minggu";
}

String toMonthName(int monthNum) {
  if (monthNum == 1) {
    return "Januari";
  }

  if (monthNum == 2) {
    return "Februari";
  }

  if (monthNum == 3) {
    return "Maret";
  }

  if (monthNum == 4) {
    return "April";
  }

  if (monthNum == 5) {
    return "Mei";
  }

  if (monthNum == 6) {
    return "Juni";
  }

  if (monthNum == 7) {
    return "Juli";
  }

  if (monthNum == 8) {
    return "Agustus";
  }

  if (monthNum == 9) {
    return "September";
  }

  if (monthNum == 10) {
    return "Oktober";
  }

  if (monthNum == 11) {
    return "November";
  }

  return "Desember";
}
//
class _BookingHotelState extends State<BookingHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 66,
                ),
                child: Column(
                  children: [

                    BookingHotelTicket(index: widget.index),
                    
                    const SizedBox(height: 16),

                    const BookingHotelSelectDateHeader(),

                    const SizedBox(height: 8),

                    const BookingHotelSelectDateSubHeader(),

                    const SizedBox(height: 16),

                    const BookingHotelSelectDateContent(),

                    const SizedBox(height: 16),

                    const BookingHotelCountHeader(),

                    const SizedBox(height: 16),

                    BookingHotelCountContent(index: widget.index),

                    Room(index: widget.index),
                  ],
                ),
              ),
            ),          
            const BookingHotelAppBar(),
          ],
        ),
      )
    );
  }
}