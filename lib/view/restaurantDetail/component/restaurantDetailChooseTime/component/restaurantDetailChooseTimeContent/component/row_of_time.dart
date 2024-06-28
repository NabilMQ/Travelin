import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';
import 'package:travelin/view/restaurantDetail/restaurant_detail.dart';

class RowOfTime extends StatefulWidget {
  const RowOfTime({ super.key });

  @override
  State <RowOfTime> createState() => _RowOfTimeState();
}

class _RowOfTimeState extends State<RowOfTime> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      controller: selectTimeController,
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 5),
        child: ValueListenableBuilder(
          valueListenable: foodTime,
          builder:(context, foodTimeValue, child) {
            return Row(
              children: List.generate(31, (index) {
                TimeOfDay temp = const TimeOfDay(
                  hour: 7,
                  minute: 0,
                );
                
                int hourTemp = index * 30 ~/ 60;
                int minuteTemp = (index * 30) % 60;

                temp = temp.replacing(
                  hour: temp.hour + hourTemp,
                  minute: temp.minute + minuteTemp,
                );
                String time = "";
                if (temp.hour < 10) {
                  time += "0${temp.hour}.";
                }
                else {
                  time += "${temp.hour}.";
                }
            
                if (temp.minute == 0) {
                  time += "00";
                }
                else {
                  time += "${temp.minute}";
                }
            
                return GestureDetector(
                  onTap: () {
                    foodTime.value = foodTime.value.replacing(
                      hour: temp.hour,
                      minute: temp.minute,
                    );
                  },
                  child: Container(
                    height: size.height,
                    width: 65,
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: isSameTime(foodTimeValue, temp) ? getOrangeColor : getWhiteColor,
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
                                toDayName(ticketDate.value.weekday),
                                style: TextStyle(
                                  fontSize: 10,
                                  color: isSameTime(foodTimeValue, temp) ? getWhiteColor : getGreyColor,
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
                                time,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: isSameTime(foodTimeValue, temp) ? getWhiteColor : getBlackColor,
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
        ),
      ),
    );
  }
}