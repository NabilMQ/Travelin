import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviewHeader extends StatelessWidget {
  const ReviewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            splashRadius: 0.1,
            padding: const EdgeInsets.all(0),
            icon: SvgPicture.asset("assets/icons/Back Button.svg"),
            onPressed: () {},
          ),
          Container(
            margin: const EdgeInsets.only(left: 40),
            child: const Text(
              "Review",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}