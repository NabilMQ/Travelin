import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';

class DetailTravelButtonBuy extends StatefulWidget {
  const DetailTravelButtonBuy({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <DetailTravelButtonBuy> createState() => _DetailTravelButtonBuyState();
}

class _DetailTravelButtonBuyState extends State<DetailTravelButtonBuy> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return DetailTicket(index: widget.index);
              },
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: getOrangeColor,
          foregroundColor: getWhiteColor,
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          "Buy Now",
          style: TextStyle(
            fontSize: 20, 
            fontFamily: getCustomFont
          ),
        ),
      ),
    );
  }
}