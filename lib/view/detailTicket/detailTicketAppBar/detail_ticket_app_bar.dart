import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DetailTicketAppBar extends StatefulWidget {
  const DetailTicketAppBar({ super.key });

  @override
  State <DetailTicketAppBar> createState() => _DetailTicketAppBarState();
}

class _DetailTicketAppBarState extends State<DetailTicketAppBar> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 56,
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
              "Detail Ticket",
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