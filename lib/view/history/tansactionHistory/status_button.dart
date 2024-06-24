import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class StatusButton extends StatelessWidget {
  final String label;
  final ValueNotifier<String> valueNotifier;
  final VoidCallback onPressed;

  const StatusButton({
    super.key,
    required this.label,
    required this.valueNotifier,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder<String>(
        valueListenable: valueNotifier,
        builder: (context, value, child) {
          return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20),
              fixedSize: const Size(double.infinity, double.infinity),
              backgroundColor: value == label ? getOrangeColor : getWhiteColor,
              surfaceTintColor: getTransparentColor,
              foregroundColor: value == label ? getWhiteColor : getGreyColor,
              shadowColor: getBlackColor,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: FittedBox(fit: BoxFit.scaleDown, child: Text(label)),
          );
        },
      ),
    );
  }
}