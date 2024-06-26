import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class AddVisitorContentHeader extends StatefulWidget {
  const AddVisitorContentHeader({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State <AddVisitorContentHeader> createState() => _AddVisitorContentHeaderState();
}

class _AddVisitorContentHeaderState extends State<AddVisitorContentHeader> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 15,
              fontFamily: getCustomFont,
              color: getBlackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}