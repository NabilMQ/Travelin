import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';
import 'package:travelin/view/restaurant/restaurant.dart';

class PayButton extends StatefulWidget {
  const PayButton({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <PayButton> createState() => _PayButtonState();
}

class _PayButtonState extends State<PayButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ValueListenableBuilder(
        valueListenable: sumTicket,
        builder: (context, sumTicketValue, child) {
          return AnimatedScale(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastEaseInToSlowEaseOut,
            scale: sumTicketValue == 0 ? 0 : 1,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Restaurant();
                    },
                  )
                );
              },
              child: Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.only(
                  bottom: 25,
                  left: 20,
                  right: 20,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: getOrangeColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Center(
                    child: Text(
                      "Selanjutnya",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: getCustomFont,
                        color: getWhiteColor,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}