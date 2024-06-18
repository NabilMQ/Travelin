import 'package:flutter/material.dart';
import 'package:travelin/view/home/home.dart';

class BackgroundColorHeader extends StatefulWidget {
  const BackgroundColorHeader({ super.key });

  @override
  State <BackgroundColorHeader> createState() => _BackgroundColorHeaderState();
}

class _BackgroundColorHeaderState extends State<BackgroundColorHeader> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: homePageBackgroundColor,
    );
  }
}