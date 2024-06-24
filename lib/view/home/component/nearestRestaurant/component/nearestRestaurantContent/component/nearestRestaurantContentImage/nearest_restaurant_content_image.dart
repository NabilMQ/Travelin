import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class NearestRestaurantContentImage extends StatefulWidget {
  const NearestRestaurantContentImage({
    super.key,
    required this.index,
  });

  final int index;


  @override
  State <NearestRestaurantContentImage> createState() => _NearestRestaurantContentImageState();
}

class _NearestRestaurantContentImageState extends State<NearestRestaurantContentImage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return FutureBuilder(
      future: getNearestRestaurantDataMainImage(widget.index),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            width: size.width * 0.275,
            height: size.height,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: FractionalOffset.center,
                colorFilter: getNearestRestaurantDataInformation(widget.index) == "Tutup" ? ColorFilter.mode(getGreyColor, BlendMode.color) : null,
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
    );
  }
}