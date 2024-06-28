import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  const DetailAppBar({super.key}) : preferredSize = const Size.fromHeight(kToolbarHeight);

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

          Center(
            child: Text(
              "Detail",
              style: TextStyle(
                fontSize: 20,
                fontFamily: getCustomFont,
                fontWeight: FontWeight.bold,
                color: getBlackColor
              ),
            ),
          ),
        ],
      ),
    );
  }
}