import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  const DetailAppBar({super.key}) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
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

          Expanded(
            child: Align(
              alignment: Alignment.center,
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
          ),

          const Expanded(
            child: SizedBox.shrink(),
          )
        ],
      ),
      centerTitle: true,
    );
  }
}