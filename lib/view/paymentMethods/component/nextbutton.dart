import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class NextButton extends StatelessWidget {
  final ValueNotifier<String> notifier;

  const NextButton({Key? key, required this.notifier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle next action
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: getOrangeColor,
        foregroundColor: getWhiteColor,
        minimumSize: Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: ValueListenableBuilder<String>(
        valueListenable: notifier,
        builder: (context, value, child) {
          return Text(value, style: TextStyle(fontSize: 20, fontFamily: getCustomFont));
        },
      ),
    );
  }
}
