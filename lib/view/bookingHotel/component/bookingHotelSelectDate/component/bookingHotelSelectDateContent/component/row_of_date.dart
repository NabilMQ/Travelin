import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/bookingHotel/booking_hotel.dart';

class RowOfDate extends StatefulWidget {
  const RowOfDate({ super.key });

  @override
  State <RowOfDate> createState() => _RowOfDateState();
}

class _RowOfDateState extends State<RowOfDate> {

  @override
  void initState() {
    super.initState();
    selectRangeDate.addListener(addSelectRangeDateScrollControllerListener);
  }

  @override
  void dispose() {
    selectRangeDate.removeListener(addSelectRangeDateScrollControllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      controller: selectRangeDate,
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 5),
        child: ValueListenableBuilder(
          valueListenable: rangeDate,
          builder:(context, rangeDateValue, child) {
            return ValueListenableBuilder(
              valueListenable: addItemSelectRangeDate,
              builder: (context, addItemSelectRangeDateValue, child) {
                return Row(
                  children: List.generate(rangeDateValue.end.difference(rangeDateValue.start).inDays + 10 + addItemSelectRangeDateValue, (index) {
                    DateTime now = DateTime.now().add(Duration(days: index));
                
                    return GestureDetector(
                      onTap: () {
                        // if (now.isAfter(rangeDateValue.end)) {
                        //   rangeDate.value = DateTimeRange(
                        //     start: rangeDateValue.start,
                        //     end: now,
                        //   );
                        // }
                        // else if (now.isBefore(rangeDateValue.end) && now.isAfter(rangeDateValue.start)) {
                        //   rangeDate.value = DateTimeRange(
                        //     start: rangeDateValue.start,
                        //     end: now,
                        //   );
                        // }
                        // else if (now.isBefore(rangeDateValue.start)) {
                        //   rangeDate.value = DateTimeRange(
                        //     start: now,
                        //     end: rangeDateValue.end,
                        //   );
                        // }
                      },
                      child: Container(
                        height: size.height,
                        width: 65,
                        margin: const EdgeInsets.only(left: 10),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: isSameDate(rangeDateValue.start, now) || isSameDate(rangeDateValue.end, now) || (now.isBefore(rangeDateValue.end) && now.isAfter(rangeDateValue.start)) ? getOrangeColor : getWhiteColor,
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
                                      color: isSameDate(rangeDateValue.start, now) || isSameDate(rangeDateValue.end, now) || (now.isBefore(rangeDateValue.end) && now.isAfter(rangeDateValue.start)) ? getWhiteColor : getGreyColor,
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
                                      color: isSameDate(rangeDateValue.start, now) || isSameDate(rangeDateValue.end, now) || (now.isBefore(rangeDateValue.end) && now.isAfter(rangeDateValue.start)) ? getWhiteColor : getBlackColor,
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