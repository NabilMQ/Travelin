import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class ButtonSection extends StatelessWidget {
  final ValueNotifier<String> buttonContentNotifier;
  
  ButtonSection({required this.buttonContentNotifier});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: getOrangeColor,
          foregroundColor: getWhiteColor,
          minimumSize: Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: ValueListenableBuilder<String>(
          valueListenable: buttonContentNotifier,
          builder: (context, value, child) {
            return Text(value, style: TextStyle(fontFamily: getCustomFont, fontSize: 20));
          },
        ),
      ),
    );
  }
}
