import 'package:flutter/material.dart';

class BackgroundImageHeader extends StatefulWidget {
  const BackgroundImageHeader({ super.key });

  @override
  State <BackgroundImageHeader> createState() => _BackgroundImageHeaderState();
}

class _BackgroundImageHeaderState extends State<BackgroundImageHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          fit: BoxFit.fitWidth,
          alignment: FractionalOffset.center,
          image: AssetImage(
            "assets/images/Background Homepage.png",
          ),
        ),
      ),
    );
  }
}