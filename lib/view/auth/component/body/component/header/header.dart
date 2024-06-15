import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class Header extends StatefulWidget {
  const Header({ super.key });

  @override
  State <Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Masuk",
                style: TextStyle(
                  color: getBlackColor,
                  fontFamily: getCustomFont,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Silahkan masukkan email dan\npassword anda",
                style: TextStyle(
                  color: getBlackColor,
                  fontFamily: getCustomFont ,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}