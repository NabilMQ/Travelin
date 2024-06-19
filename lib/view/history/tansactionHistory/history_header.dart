import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoryHeader extends StatelessWidget {
  const HistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            splashRadius: 0.1,
            padding: const EdgeInsets.all(0),
            icon: SvgPicture.asset("assets/icons/Back Button.svg"),
            onPressed: () {},
          ),
          const Text(
            "Transaction History",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}