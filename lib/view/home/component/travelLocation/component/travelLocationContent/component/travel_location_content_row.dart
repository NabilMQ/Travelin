import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class TravelLocationContentRow extends StatefulWidget {
  const TravelLocationContentRow({
    super.key,
    required this.data,
  });

  final Map <String, String> data;

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
        children: List.generate(widget.data.length, (index) {
          return Container(
            width: size.width * 0.48,
            height: 50,
            margin: index == 3 ? EdgeInsets.zero : const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: getWhiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: getBlackColor.withOpacity(0.25),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
              
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Image.asset(
                    widget.data.keys.elementAt(index),
                    filterQuality: FilterQuality.high,
                  ),
                ),
              
                const SizedBox(width: 5),
              
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        widget.data.values.elementAt(index),
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