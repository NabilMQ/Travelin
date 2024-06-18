import 'package:flutter/material.dart';

class TravelStayContentImage extends StatefulWidget {
  const TravelStayContentImage({ super.key });

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
        child: FittedBox(
          fit: BoxFit.fill,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/Get Started (1).jpg",
            ),
          ),
        ),
      ),
    );
  }
}