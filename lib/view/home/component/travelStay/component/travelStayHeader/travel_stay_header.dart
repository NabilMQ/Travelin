import 'package:flutter/material.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayHeader/component/travel_stay_main_header.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayHeader/component/travel_stay_see_more.dart';

class TravelStayHeader extends StatefulWidget {
  const TravelStayHeader({ super.key });

  @override
  State <TravelStayHeader> createState() => _TravelStayHeaderState();
}

class _TravelStayHeaderState extends State<TravelStayHeader> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        TravelStayMainHeader(),
    
        TravelStaySeeMore()
      ],
    );
  }
}