import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class AddVisitorsHeader extends StatefulWidget {
  const AddVisitorsHeader({ super.key });

  @override
  State <AddVisitorsHeader> createState() => _AddVisitorsHeaderState();
}

class _AddVisitorsHeaderState extends State<AddVisitorsHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Tambah Pengunjung",
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