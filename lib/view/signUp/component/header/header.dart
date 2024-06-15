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

    Size size = MediaQuery.of(context).size;

    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: size.width,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: getCustomFont,
                      color: getBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
      
          Expanded(
            flex: 2,
            child: SizedBox(
              width: size.width,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Silahkan masukkan data diri",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: getCustomFont,
                      color: getBlackColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),    
    );
  }
}