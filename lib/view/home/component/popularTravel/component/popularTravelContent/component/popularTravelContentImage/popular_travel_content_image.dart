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
      child: FutureBuilder(
        future: getTravelDataMainImage(widget.index),
        builder:(context, snapshot) {
          if (snapshot.hasData) { 
            return FittedBox(
              fit: BoxFit.fill,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  snapshot.data.toString(),
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
    );
  }
}