import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class ChooseDateHeader extends StatefulWidget {
  const ChooseDateHeader({ super.key });

  @override
  State <ChooseDateHeader> createState() => _ChooseDateHeaderState();
}

class _ChooseDateHeaderState extends State<ChooseDateHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Pilih Tanggal",
        style: TextStyle(
          fontSize: 20,
          color: getBlackColor,
          fontFamily: getCustomFont,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}