import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';
import 'package:travelin/controller/travel_type_controller.dart';

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
            getTravelType.entries.firstWhere((element) => element.value == getTravelDataType(widget.index)).key.toString(),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}