import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/customBotNavBar/custom_bot_nav_bar.dart';

class CustomBotNavBarItem extends StatefulWidget {
  const CustomBotNavBarItem({
    super.key,
    required this.svgAfter,
    required this.svgBefore,
    required this.name,
    required this.value,
  });

  final String svgBefore;
  final String svgAfter;
  final String name;
  final int value;

  @override
  State <CustomBotNavBarItem> createState() => _CustomBotNavBarItemState();
}

class _CustomBotNavBarItemState extends State<CustomBotNavBarItem> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        customBotNavBarValue.value = widget.value;
      },
      child: ValueListenableBuilder(
        valueListenable: customBotNavBarValue,
        builder: (context, customBotNavBarValueVal, child) {
          return SizedBox(
            width: size.width * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  customBotNavBarValueVal == widget.value ? widget.svgAfter : widget.svgBefore,
                  height: 28,
                ),
            
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: customBotNavBarValueVal == widget.value ? getOrangeColor : getGreyColor,
                    fontFamily: getCustomFont,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}