import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class Footer extends StatefulWidget {
  const Footer({ super.key });

  @override
  State <Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 50,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
            width: size.width,
            padding: const EdgeInsets.all(5),
            child: Text(
              "Copyrigt 2024 - Travelin",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: getBlackColor,
                fontFamily: getCustomFont,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            )
          ),
        ),
      ),
    );
  }
}