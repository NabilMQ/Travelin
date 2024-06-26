import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/customBotNavBar/custom_bot_nav_bar.dart';
import 'package:travelin/view/detailTicket/addVisitors/component/addVisitorsContent/add_visitors_content.dart';
import 'package:travelin/view/detailTicket/addVisitors/component/addVisitorsHeader/add_visitors_header.dart';
import 'package:travelin/view/detailTicket/chooseDate/component/chooseDateContent/choose_date_content.dart';
import 'package:travelin/view/detailTicket/chooseDate/component/chooseDateHeader/choose_date_header.dart';
import 'package:travelin/view/detailTicket/chooseNearestRestaurant/component/chooseNearestRestaurantContent/choose_nearest_restaurant_content.dart';
import 'package:travelin/view/detailTicket/chooseNearestRestaurant/component/chooseNearestRestaurantHeader/choose_nearest_restaurant_header.dart';
import 'package:travelin/view/detailTicket/detailTicketAppBar/detail_ticket_app_bar.dart';
import 'package:travelin/view/detailTicket/orderFood/order_food.dart';
import 'package:travelin/view/detailTicket/ticket/ticket.dart';

class DetailTicket extends StatefulWidget {
  const DetailTicket({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <DetailTicket> createState() => _DetailTicketState();
}

// model

ValueNotifier <int> adultTicketCount = ValueNotifier <int> (0);
ValueNotifier <int> childTicketCount = ValueNotifier <int> (0);

ScrollController chooseDateScrollController = ScrollController();

ValueNotifier <DateTime> ticketDate = ValueNotifier <DateTime> (DateTime.now());
DateTime choosedTicketDate = DateTime.now();
ValueNotifier <int> addItemChooseDate = ValueNotifier <int> (0);
ValueNotifier <bool> isOrderFood = ValueNotifier <bool> (false);

bool isSameDate(DateTime first, DateTime second) {
  if (first.day == second.day && first.month == second.month && first.year == second.year) {
    return true;
  }

  return false;
}

void addChooseDateScrollControllerListener() async {
  if (chooseDateScrollController.position.atEdge) {
    bool isTop = chooseDateScrollController.position.pixels == 0;
    if (!isTop) {
      Future.delayed(const Duration(seconds: 1), () {
        addItemChooseDate.value += 10;
      });
      debugPrint(addItemChooseDate.value.toString());
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

// batas

class _DetailTicketState extends State<DetailTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getWhiteColor,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    DetailTicketAppBar(),
                
                    Ticket(index: widget.index),
          
                    ChooseDateHeader(),
          
                    SizedBox(height: 15),
          
                    ChooseDateContent(),
          
                    SizedBox(height: 15),
          
                    AddVisitorsHeader(),
          
                    SizedBox(height: 15),
          
                    AddVisitorsContent(index: widget.index),
          
                    OrderFood(),
          
                    SizedBox(height: 15),
          
                    ValueListenableBuilder(
                      valueListenable: isOrderFood, 
                      builder: (context, isOrderFoodValue, child) {
                        if (isOrderFoodValue) {
                          return ChooseNearestRestaurantHeader();
                        }

                        return SizedBox.shrink();
                      },
                    ),

                    ValueListenableBuilder(
                      valueListenable: isOrderFood, 
                      builder: (context, isOrderFoodValue, child) {
                        if (isOrderFoodValue) {
                          return SizedBox(height: 15);
                        }

                        return SizedBox.shrink();
                      },
                    ),

                    ValueListenableBuilder(
                      valueListenable: isOrderFood, 
                      builder: (context, isOrderFoodValue, child) {
                        if (isOrderFoodValue) {
                          return ChooseNearestRestaurantContent();
                        }

                        return SizedBox.shrink();
                      },
                    ),

                    ValueListenableBuilder(
                      valueListenable: isOrderFood, 
                      builder: (context, isOrderFoodValue, child) {
                        if (isOrderFoodValue) {
                          return SizedBox(height: 65);
                        }

                        return SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),

          CustomBotNavBar(),
        ],
      )
    );
  }
}