import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class SubmitButton extends StatelessWidget {
  final ValueNotifier<String> notifier;
  final VoidCallback onPressed;

  const SubmitButton({super.key, required this.notifier, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: getOrangeColor,
        foregroundColor: getWhiteColor,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: ValueListenableBuilder<String>(
        valueListenable: notifier,
        builder: (context, value, child) {
          return Text(value, style: const TextStyle(fontSize: 16));
        },
      ),
    );
  }
}