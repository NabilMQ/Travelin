import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class RestaurantContentImage extends StatefulWidget {
  const RestaurantContentImage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantContentImage> createState() => _RestaurantContentImageState();
}

class _RestaurantContentImageState extends State<RestaurantContentImage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Expanded(
      flex: 6,
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: FutureBuilder(
          future: getNearestRestaurantDataMainImage(widget.index),
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
                    colorFilter: getNearestRestaurantDataInformation(widget.index) == "Buka" ? null : ColorFilter.mode(getGreyColor, BlendMode.color),
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