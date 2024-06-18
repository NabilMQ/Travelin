import 'package:flutter/material.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelHeader/component/popular_travel_main_header.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelHeader/component/popular_travel_see_more.dart';

class PopularTravelHeader extends StatefulWidget {
  const PopularTravelHeader({ super.key });

  @override
  State <PopularTravelHeader> createState() => _PopularTravelHeaderState();
}

class _PopularTravelHeaderState extends State<PopularTravelHeader> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        PopularTravelMainHeader(),

        PopularTravelSeeMore(),
      ],
    );
  }
}