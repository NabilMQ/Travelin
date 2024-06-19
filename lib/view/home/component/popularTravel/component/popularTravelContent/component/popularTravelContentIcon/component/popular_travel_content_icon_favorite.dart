import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/color_controller.dart';

class PopularTravelContentIconFavorite extends StatefulWidget {
  const PopularTravelContentIconFavorite({ super.key });

  @override
  State <PopularTravelContentIconFavorite> createState() => _PopularTravelContentIconFavoriteState();
}

class _PopularTravelContentIconFavoriteState extends State<PopularTravelContentIconFavorite> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
          child: SvgPicture.asset(
            "assets/icons/Love Red.svg",
            colorFilter: ColorFilter.mode(getGreyColor, BlendMode.srcIn),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}