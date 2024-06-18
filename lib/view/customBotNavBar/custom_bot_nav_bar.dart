import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/customBotNavBar/component/custom_bot_nav_bar_item.dart';

class CustomBotNavBar extends StatefulWidget {
  const CustomBotNavBar({ super.key });

  @override
  State <CustomBotNavBar> createState() => _CustomBotNavBarState();
}

// Model baru

ValueNotifier <int> customBotNavBarValue = ValueNotifier <int> (0);

// batas model

class _CustomBotNavBarState extends State<CustomBotNavBar> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: size.width,
        height: 65,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: getWhiteColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: getBlackColor.withOpacity(0.25),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),

        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBotNavBarItem(
              svgBefore: "assets/icons/Home Gray.svg",
              svgAfter: "assets/icons/Home Orange.svg",
              name: "Home",
              value: 0,
            ),
            
            CustomBotNavBarItem(
              svgBefore: "assets/icons/Logo Icon Gray.svg",
              svgAfter: "assets/icons/Logo Icon Orange.svg",
              name: "Travel",
              value: 1,
            ),

            CustomBotNavBarItem(
              svgBefore: "assets/icons/History Gray.svg",
              svgAfter: "assets/icons/History Orange.svg",
              name: "History",
              value: 2,
            ),

            CustomBotNavBarItem(
              svgBefore: "assets/icons/Person Gray.svg",
              svgAfter: "assets/icons/Person Orange.svg",
              name: "Profile",
              value: 3,
            ),
          ],
        ),
      ),
    );
  }
}