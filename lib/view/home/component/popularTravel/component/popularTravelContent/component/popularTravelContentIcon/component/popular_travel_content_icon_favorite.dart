import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';

class PopularTravelContentIconFavorite extends StatefulWidget {
  const PopularTravelContentIconFavorite({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <PopularTravelContentIconFavorite> createState() => _PopularTravelContentIconFavoriteState();
}

class _PopularTravelContentIconFavoriteState extends State<PopularTravelContentIconFavorite> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          changeFavoriteTravelValue(widget.index);
        },
        child: Align(
          alignment: Alignment.topRight ,
          child: Container(
            width: 30,
            height: 30,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: getWhiteColor,
              borderRadius: BorderRadius.circular(100)
            ),
            child: ValueListenableBuilder(
              valueListenable: getIsTravelFavoriteListenable(widget.index),
              builder: (context, isTravelFavoriteListenableValue, child) {
                return SvgPicture.asset(
                  isTravelFavoriteListenableValue ? "assets/icons/Love Red.svg" : "assets/icons/Love Grey.svg",
                  fit: BoxFit.scaleDown,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}