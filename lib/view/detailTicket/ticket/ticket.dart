import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/detailTicket/ticket/component/ticket_content.dart';
import 'package:travelin/view/detailTicket/ticket/component/ticket_image.dart';

class Ticket extends StatefulWidget {
  const Ticket({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 148,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: getBlackColor.withOpacity(0.25),
          ),
        ],
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [
          TicketImage(index: widget.index),

          TicketContent(index: widget.index),
        ],
      ),
    );
  }
}