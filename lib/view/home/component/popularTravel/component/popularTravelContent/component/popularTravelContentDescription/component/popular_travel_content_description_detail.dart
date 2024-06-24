import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';

class PopularTravelContentDescriptionDetail extends StatefulWidget {
  const PopularTravelContentDescriptionDetail({
    super.key,
    required this.index
  });

  final int index;
  
  @override
  State <PopularTravelContentDescriptionDetail> createState() => _PopularTravelContentDescriptionDetailState();
}

class _PopularTravelContentDescriptionDetailState extends State<PopularTravelContentDescriptionDetail> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          getTravelDataDescriptionDetail(widget.index),
          maxLines: 2,
          style: TextStyle(
            fontSize: 8,
            fontFamily: getCustomFont,
            fontWeight: FontWeight.w500,
            color: getGreyColor,
          ),
        ),
      ),
    );
  }
}