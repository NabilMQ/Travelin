import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';

class TicketContent extends StatefulWidget {
  const TicketContent({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <TicketContent> createState() => _TicketContentState();
}

class _TicketContentState extends State<TicketContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    getTravelDataType(widget.index),
                    style: TextStyle(
                      fontSize: 12,
                      color: getGreyColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: getCustomFont,
                    ),
                  ),
                ),
              ),
            ),
        
            Expanded(
              flex: 20,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Tiket ${getTravelDataName(widget.index)}",
                    style: TextStyle(
                      fontSize: 20,
                      color: getBlackColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: getCustomFont,
                    ),
                  ),
                ),
              ),
            ),
        
            Expanded(
              flex: 12,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    getTravelDataLocation(widget.index),
                    style: TextStyle(
                      fontSize: 12,
                      color: getBlackColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: getCustomFont,
                    ),
                  ),
                ),
              ),
            ),
        
            Expanded(
              flex: 15,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Harga:",
                    style: TextStyle(
                      fontSize: 15,
                      color: getBlackColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: getCustomFont,
                    ),
                  ),
                ),
              ),
            ),
        
            Expanded(
              flex: 15,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    NumberFormat.currency(
                      locale: 'id',
                      symbol: 'Rp ',
                      decimalDigits: 0,
                    ).format(int.parse(getTravelDataPrice(widget.index))),
                    style: TextStyle(
                      fontSize: 15,
                      color: getOrangeColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: getCustomFont,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}