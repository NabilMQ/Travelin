import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class Hider extends StatefulWidget {
  const Hider({
    super.key,
    required this.offset,
  });

  final Offset offset;

  @override
  State <Hider> createState() => _HiderState();
}

class _HiderState extends State<Hider> {
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