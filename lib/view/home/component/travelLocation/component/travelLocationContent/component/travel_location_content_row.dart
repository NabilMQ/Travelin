import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class TravelLocationContentRow extends StatefulWidget {
  const TravelLocationContentRow({ super.key });

  @override
  State <TravelLocationContentRow> createState() => _TravelLocationContentRowState();
}

class _TravelLocationContentRowState extends State<TravelLocationContentRow> {
   @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: 50,
      padding: const EdgeInsets.all(5),
      child: Row(
        children: List.generate(5, (index) {
          return Container(
            width: size.width * 0.48,
            height: 50,
            margin: index == 4 ? EdgeInsets.zero : const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: getWhiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: getBlackColor.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                const SizedBox(width: 10),
              
                const Icon(
                  Icons.abc,
                ),
              
                const SizedBox(width: 5),
              
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Kota Semarang",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: getCustomFont,
                          fontWeight: FontWeight.w500,
                          color: getBlackColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}