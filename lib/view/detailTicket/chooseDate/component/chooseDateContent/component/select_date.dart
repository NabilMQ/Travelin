
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';

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
          ticketDate.value = await showDatePicker(
            context: context,
            initialDate: choosedTicketDate,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)),
            currentDate: choosedTicketDate,
            barrierDismissible: false,
          ) ?? choosedTicketDate;
          
          chooseDateScrollController.animateTo(
            (ticketDate.value.difference(DateTime.now())).inDays.isNegative ? (65 * ((ticketDate.value.difference(DateTime.now())).inDays)).toDouble() : (65 * ((ticketDate.value.difference(DateTime.now())).inDays + 2)).toDouble(),
            duration: const Duration(seconds: 1),
            curve: Curves.fastEaseInToSlowEaseOut,
          );
    
          choosedTicketDate = ticketDate.value;
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