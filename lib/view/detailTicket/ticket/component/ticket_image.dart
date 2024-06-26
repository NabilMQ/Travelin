import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';

class TicketImage extends StatefulWidget {
  const TicketImage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <TicketImage> createState() => _TicketImageState();
}

class _TicketImageState extends State<TicketImage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: FutureBuilder(
        future: getTravelDataMainImage(widget.index),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: getBlackColor.withOpacity(0.25),
                  )
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: FractionalOffset.center,
                  image: NetworkImage(
                    snapshot.data.toString(),
                  )
                ),
              ),
            );
          }

          return Container(
            margin: const EdgeInsets.all(20),
            color: getWhiteColor,
            child: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      ),
    );
  }
}