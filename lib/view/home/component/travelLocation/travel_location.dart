import 'package:flutter/material.dart';
import 'package:travelin/view/home/component/travelLocation/component/travelLocationContent/travel_location_content.dart';
import 'package:travelin/view/home/component/travelLocation/component/travelLocationHeader/travel_location_header.dart';

class TravelLocation extends StatefulWidget {
  const TravelLocation({ super.key });

  @override
  State <TravelLocation> createState() => _TravelLocationState();
}

class _TravelLocationState extends State<TravelLocation> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 200,
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: const Column(
        children: [
          TravelLocationHeader(),

          TravelLocationContent(),
        ],
      ),
    );
  }
}