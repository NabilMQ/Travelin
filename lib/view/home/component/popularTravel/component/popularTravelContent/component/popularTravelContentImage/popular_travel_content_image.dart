import 'package:flutter/material.dart';
import 'package:travelin/controller/travel_controller.dart';

class PopularTravelContentImage extends StatefulWidget {
  const PopularTravelContentImage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <PopularTravelContentImage> createState() => _PopularTravelContentImageState();
}

class _PopularTravelContentImageState extends State<PopularTravelContentImage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: FittedBox(
        fit: BoxFit.fill,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: FutureBuilder(
            future: getTravelDataMainImage(widget.index),
            builder:(context, snapshot) {
              if (snapshot.hasData) {
                return Image.network(
                  snapshot.data.toString(),
                );
              }

              return SizedBox.shrink();
            },
          )
        ),
      ),
    );
  }
}