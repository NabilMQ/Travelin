import 'package:flutter/material.dart';

class BackgroundImageHeader extends StatefulWidget {
  const BackgroundImageHeader({ super.key });

  @override
  State <BackgroundImageHeader> createState() => _BackgroundImageHeaderState();
}

class _BackgroundImageHeaderState extends State<BackgroundImageHeader> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        "assets/images/Background Homepage.png",
      ),
    );
  }
}