import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/color_controller.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  DetailAppBar({Key? key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            splashRadius: 0.1,
            padding: EdgeInsets.zero,
            icon: SvgPicture.asset("assets/icons/Back Button.svg"),
            onPressed: () {},
          ),
          const SizedBox(width: 64), // Beri jarak antara ikon dan teks
          Text(
            "Detail                       ",
            style: TextStyle(fontSize: 20, fontFamily: getCustomFont, fontWeight: FontWeight.bold, color: getBlackColor),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
