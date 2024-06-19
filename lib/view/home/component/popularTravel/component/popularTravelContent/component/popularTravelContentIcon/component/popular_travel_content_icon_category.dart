import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/controller/travel_controller.dart';

class PopularTravelContentIconCategory extends StatefulWidget {
  const PopularTravelContentIconCategory({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <PopularTravelContentIconCategory> createState() => _PopularTravelContentIconCategoryState();
}

class _PopularTravelContentIconCategoryState extends State<PopularTravelContentIconCategory> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: 30,
          height: 30,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: getWhiteColor,
            borderRadius: BorderRadius.circular(100)
          ),
          child: SvgPicture.asset(
            "assets/icons/${getTravelDataType(widget.index)}.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}