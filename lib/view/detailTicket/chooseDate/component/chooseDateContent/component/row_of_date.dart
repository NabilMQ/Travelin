import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';

class RowOfDate extends StatefulWidget {
  const RowOfDate({ super.key });

  @override
  State <RowOfDate> createState() => _RowOfDateState();
}

class _RowOfDateState extends State<RowOfDate> {

  @override
  void initState() {
    super.initState();
    chooseDateScrollController.addListener(addChooseDateScrollControllerListener);
  }

  @override
  void dispose() {
    chooseDateScrollController.removeListener(addChooseDateScrollControllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      controller: chooseDateScrollController,
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 5),
        child: ValueListenableBuilder(
          valueListenable: ticketDate,
          builder:(context, ticketDateValue, child) {
            return ValueListenableBuilder(
              valueListenable: addItemChooseDate,
              builder: (context, addItemChooseDateValue, child) {
                return Row(
                  children: List.generate(ticketDateValue.difference(DateTime.now()).inDays + 10 + addItemChooseDateValue, (index) {
                    DateTime now = DateTime.now().add(Duration(days: index));
                
                    return GestureDetector(
                      onTap: () {
                        ticketDate.value = now;
                        choosedTicketDate = now;
                      },
                      child: Container(
                        height: size.height,
                        width: 65,
                        margin: const EdgeInsets.only(left: 10),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: isSameDate(ticketDateValue, now) ? getOrangeColor : getWhiteColor,
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
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    toDayName(now.weekday),
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: isSameDate(ticketDateValue, now) ? getWhiteColor : getGreyColor,
                                      fontFamily: getCustomFont,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                              
                            const SizedBox(height: 2.5),
                              
                            Expanded(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    "${now.day} ${toMonthName(now.month)}",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: isSameDate(ticketDateValue, now) ? getWhiteColor : getBlackColor,
                                      fontFamily: getCustomFont,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              },
            );
          },
        ),
      ),
    );
  }
}