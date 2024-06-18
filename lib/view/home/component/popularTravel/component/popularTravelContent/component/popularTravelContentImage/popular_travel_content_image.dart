import 'package:flutter/material.dart';

class PopularTravelContentImage extends StatefulWidget {
  const PopularTravelContentImage({ super.key });

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
          child: Image.asset(
            "assets/images/Get Started (1).jpg",
          ),
        ),
      ),
    );
  }
}