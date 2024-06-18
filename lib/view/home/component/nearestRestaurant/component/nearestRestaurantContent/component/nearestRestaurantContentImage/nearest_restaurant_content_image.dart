import 'package:flutter/material.dart';

class NearestRestaurantContentImage extends StatefulWidget {
  const NearestRestaurantContentImage({ super.key });

  @override
  State <NearestRestaurantContentImage> createState() => _NearestRestaurantContentImageState();
}

class _NearestRestaurantContentImageState extends State<NearestRestaurantContentImage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.275,
      height: size.height,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset(
          "assets/images/Get Started (1).jpg",
        ),
      ),
    );
  }
}