import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class TextHeader extends StatefulWidget {
  const TextHeader({ super.key });

  @override
  State <TextHeader> createState() => _TextHeaderState();
}

class _TextHeaderState extends State<TextHeader> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.topLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Halo",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: getCustomFont,
                    fontWeight: FontWeight.normal,
                    color: getBlackColor,
                  ),
                ),
              ),
            ),
          ),
      
          Expanded(
            flex: 5,
            child: Align(
              alignment: Alignment.topLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Nama User",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: getCustomFont,
                    fontWeight: FontWeight.w600,
                    color: getBlackColor,
                  ),
                ),
              ),
            ),
          ),
      
          const Expanded(
            flex: 5 ,
            child: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}