import 'package:flutter/material.dart';
import 'package:travelin/controller/travel_stay_controller.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayContent/travel_stay_content.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayHeader/travel_stay_header.dart';

class TravelStay extends StatefulWidget {
  const TravelStay({ super.key });

  @override
  State <TravelStay> createState() => _TravelStayState();
}

class _TravelStayState extends State<TravelStay> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const TravelStayHeader(),
          
          StreamBuilder(
            stream: getTravelStayStreamData,
            builder:(context, snapshot) {
              if (snapshot.hasData) {
                processsTravelStayData(snapshot);
                return const TravelStayContent();
              }
          
              return const Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}