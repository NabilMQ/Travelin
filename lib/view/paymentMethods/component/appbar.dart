import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/color_controller.dart';

class AppBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            splashRadius: 0.1,
            padding: EdgeInsets.zero,
            icon: SvgPicture.asset("assets/icons/Back Button.svg"),
            onPressed: () {},
          ),
          const SizedBox(width: 32), // Beri jarak antara ikon dan teks
          Text(
            "Payment Methods",
            style: TextStyle(
              fontSize: 20,
              fontFamily: getCustomFont,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
