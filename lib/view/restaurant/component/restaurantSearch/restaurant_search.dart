import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class RestaurantSearch extends StatefulWidget {
  const RestaurantSearch({ super.key });

  @override
  State <RestaurantSearch> createState() => _RestaurantSearchState();
}

class _RestaurantSearchState extends State<RestaurantSearch> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 55,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: getBlackColor.withOpacity(0.25),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Cari Restaurant",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: getCustomFont,
                    color: getGreyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ),

          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              "assets/icons/Search.svg",
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      )
    );
  }
}