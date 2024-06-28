import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/bookingHotel/booking_hotel.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';
import 'package:travelin/view/restaurantDetail/restaurant_detail.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({ super.key });

  @override
  State <SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () async {
          rangeDate.value = await showDateRangePicker(
            context: context,
            firstDate: ticketDate.value,
            lastDate: choosedRangeDate.end.add(const Duration(days: 365)),
            initialDateRange: choosedRangeDate
          ) ?? choosedRangeDate;
          
          selectTimeController.animateTo(
            (rangeDate.value.start.difference(choosedRangeDate.start)).inDays.isNegative ? (65 * ((rangeDate.value.start.difference(choosedRangeDate.start)).inDays)).toDouble() : (65 * (rangeDate.value.start.difference(choosedRangeDate.start)).inDays).toDouble(),
            duration: const Duration(seconds: 1),
            curve: Curves.fastEaseInToSlowEaseOut,
          );
    
          choosedRangeDate = rangeDate.value;
        },
        child: Container(
          height: size.height,
          width: 35,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: getWhiteColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: getBlackColor.withOpacity(0.25),
              ),
            ],
          ),
        
          child: Column(
            children: [
              Expanded(
                child: SvgPicture.asset(
                  "assets/icons/Date.svg",
                  fit: BoxFit.scaleDown,
                  width: 18,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
        
              Expanded(
                child: SvgPicture.asset(
                  "assets/icons/Arrow Down.svg",
                  fit: BoxFit.scaleDown,
                  width: 10,
                  alignment: AlignmentDirectional.bottomCenter,
                  colorFilter: ColorFilter.mode(getBlackColor, BlendMode.srcIn),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}