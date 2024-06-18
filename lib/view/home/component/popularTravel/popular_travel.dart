import 'package:flutter/material.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/popular_travel_content.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelHeader/popular_travel_header.dart';

class PopularTravel extends StatefulWidget {
  const PopularTravel({ super.key });

  @override
  State <PopularTravel> createState() => _PopularTravelState();
}

class _PopularTravelState extends State<PopularTravel> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 270,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          PopularTravelHeader(),
          
          PopularTravelContent(),
        ],
      ),
    );
  }
}