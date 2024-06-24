import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class MapSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text("Maps", style: TextStyle(fontSize: 20, fontFamily: getCustomFont, fontWeight: FontWeight.bold)),
        SizedBox(height: 16),
        Container(
          height: 200,
          width: screenWidth * 0.8,
          child: Center(child: Text("Map Placeholder")),
          decoration: BoxDecoration(
            color: getGreyColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }
}
