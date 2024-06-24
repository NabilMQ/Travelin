import 'package:flutter/material.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class TravelStayContentImage extends StatefulWidget {
  const TravelStayContentImage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <TravelStayContentImage> createState() => _TravelStayContentImageState();
}

class _TravelStayContentImageState extends State<TravelStayContentImage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Expanded(
      flex: 4,
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: FutureBuilder(
          future: getTravelStayDataMainImage(widget.index),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: FractionalOffset.center,
                    image: NetworkImage(
                      snapshot.data.toString(),
                    )
                  ),
                ),
              );
            }

            return const FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}