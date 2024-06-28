import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class RestaurantDetailAppBar extends StatefulWidget {
  const RestaurantDetailAppBar({ super.key });

  @override
  State <RestaurantDetailAppBar> createState() => _RestaurantDetailAppBarState();
}

class _RestaurantDetailAppBarState extends State<RestaurantDetailAppBar> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: getWhiteColor,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: IconButton(
                    splashRadius: 0.1,
                    padding: EdgeInsets.zero,
                    icon: SvgPicture.asset("assets/icons/Back Button.svg"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),

              const Expanded(
                flex: 2,
                child: SizedBox.shrink(),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(left: size.width * 0.1),
            child: Center(
              child: Text(
                "Choose Menu",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: getCustomFont,
                  fontWeight: FontWeight.bold,
                  color: getBlackColor
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}