import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class Blocker extends StatefulWidget {
  const Blocker({
    super.key,
    required this.offset,
  });

  final Offset offset;

  @override
  State <Blocker> createState() => _BlockerState();
}

class _BlockerState extends State<Blocker> {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: widget.offset,
      child: Container(
        color: getWhiteColor,
        width: 100,
        height: 60,
      ),
    );
  }
}