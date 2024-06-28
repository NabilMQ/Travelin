import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';

class AddVisitorContentTicketCount extends StatefulWidget {
  const AddVisitorContentTicketCount({
    super.key,
    required this.valueNotifier,
    required this.index,
    required this.isAdult,
  });

  final int index;
  final ValueNotifier <int> valueNotifier;
  final bool isAdult;

  @override
  State <AddVisitorContentTicketCount> createState() => _AddVisitorContentTicketCountState();
}

class _AddVisitorContentTicketCountState extends State<AddVisitorContentTicketCount> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  NumberFormat.currency(
                    locale: 'id',
                    symbol: 'Rp ',
                    decimalDigits: 0,
                  ).format(widget.isAdult ? int.parse(getTravelDataPrice(widget.index)) : int.parse(getTravelDataPrice(widget.index)) ~/ 2),
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: getCustomFont,
                    color: getOrangeColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: getWhiteColor,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: getBlackColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Material(
                        child: InkWell(
                          splashColor: getOrangeColor,
                          onTap: () {
                            if (widget.valueNotifier.value > 0) {
                              widget.valueNotifier.value--;
                              sumTicket.value--;
                            }
                          },
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: getCustomFont,
                                    color: getBlackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(width: 5),
              
                  Container(
                    width: 45,
                    height: 25,
                    decoration: BoxDecoration(
                      color: getWhiteColor,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: getBlackColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Center(
                        child: ValueListenableBuilder(
                          valueListenable: widget.valueNotifier,
                          builder: (context, value, child) {
                            return Text(
                              value.toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: getCustomFont,
                                color: getBlackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(width: 5),
              
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: getWhiteColor,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: getBlackColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Material(
                        child: InkWell(
                          splashColor: getOrangeColor,
                          onTap: () {
                            widget.valueNotifier.value++;
                            sumTicket.value++;
                          },
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: getCustomFont,
                                    color: getBlackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}