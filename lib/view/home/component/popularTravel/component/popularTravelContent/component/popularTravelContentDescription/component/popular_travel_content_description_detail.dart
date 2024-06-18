import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class PopularTravelContentDescriptionDetail extends StatefulWidget {
  const PopularTravelContentDescriptionDetail({ super.key });

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
          "Aset berharga UNESCO yang ada di Magelang",
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