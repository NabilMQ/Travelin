import 'package:flutter/material.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class HotelContentImage extends StatefulWidget {
  const HotelContentImage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <HotelContentImage> createState() => _HotelContentImageState();
}

class _HotelContentImageState extends State<HotelContentImage> {
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
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
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