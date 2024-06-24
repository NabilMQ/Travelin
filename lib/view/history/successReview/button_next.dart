import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class ButtonNext extends StatefulWidget {
  const ButtonNext({super.key});

  @override
  State<ButtonNext> createState() => _ButtonNextState();
}

class _ButtonNextState extends State<ButtonNext> {
final ValueNotifier<String> _buttonContentNotifier =
      ValueNotifier<String>("Selanjutnya");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle next action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: getOrangeColor,
                  foregroundColor: getWhiteColor,
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: ValueListenableBuilder<String>(
                  valueListenable: _buttonContentNotifier,
                  builder: (context, value, child) {
                    return Text(value, style: const TextStyle(fontSize: 16));
                  },
                ),
              ),
            ),
      ),
    );
  }
}