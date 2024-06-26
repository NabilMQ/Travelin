import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';
import 'package:travelin/view/detailTicket/addVisitors/component/addVisitorsContent/component/add_visitor_content_header.dart';
import 'package:travelin/view/detailTicket/addVisitors/component/addVisitorsContent/component/add_visitor_content_ticket_count.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';

class AddVisitorsContent extends StatefulWidget {
  const AddVisitorsContent({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <AddVisitorsContent> createState() => _AddVisitorsContentState();
}

class _AddVisitorsContentState extends State<AddVisitorsContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 148,
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: getBlackColor.withOpacity(0.25),
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const AddVisitorContentHeader(text: "Dewasa"),

                AddVisitorContentTicketCount(
                  valueNotifier: adultTicketCount,
                  index: widget.index,
                  isAdult: true,
                ),
              ]
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            flex: 1,
            child: Column(
              children: [
                const AddVisitorContentHeader(text: "Anak"),

                AddVisitorContentTicketCount(
                  valueNotifier: childTicketCount,
                  index: widget.index,
                  isAdult: false,
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}