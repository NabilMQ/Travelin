import 'package:flutter/material.dart';
import 'package:travelin/controller/travel_location_controller.dart';
import 'package:travelin/view/home/component/travelLocation/component/travelLocationContent/component/travel_location_content_row.dart';

class TravelLocationContent extends StatefulWidget {
  const TravelLocationContent({ super.key });

  @override
  State <TravelLocationContent> createState() => _TravelLocationContentState();
}

class _TravelLocationContentState extends State<TravelLocationContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            TravelLocationContentRow(
              data: getLocationDataFirstRow,
            ),
        
            TravelLocationContentRow(
              data: getLocationDataSecondRow,
            ),
          ],
        ),
      ),
    );
  }
}