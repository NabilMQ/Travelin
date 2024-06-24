import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_type_controller.dart';

class TravelCategoryContent extends StatefulWidget {
  const TravelCategoryContent({ super.key });

  @override
  State <TravelCategoryContent> createState() => _TravelCategoryContentState();
}

class _TravelCategoryContentState extends State<TravelCategoryContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.all(5),
              child: Row(
                children: List.generate(getTravelTypeLength, (index) {
                  return Container(
                    width: size.width * 0.3,
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
                      
                        SvgPicture.asset(
                          getTravelType.keys.elementAt(index),
                        ),
                      
                        const SizedBox(width: 5),
                      
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                getTravelType.values.elementAt(index),
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
            ),
          ],
        ),
      ),
    );
  }
}