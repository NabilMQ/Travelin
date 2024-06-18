import 'package:flutter/material.dart';
import 'package:travelin/view/home/component/travelCategory/component/travel_category_content.dart';
import 'package:travelin/view/home/component/travelCategory/component/travel_category_header.dart';

class TravelCategory extends StatefulWidget {
  const TravelCategory({ super.key });

  @override
  State <TravelCategory> createState() => _TravelCategoryState();
}

class _TravelCategoryState extends State<TravelCategory> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 110,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          TravelCategoryHeader(),

          TravelCategoryContent(),
        ],
      ),
    );
  }
}