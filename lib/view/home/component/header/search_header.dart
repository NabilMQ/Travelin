import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/color_controller.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({ super.key });

  @override
  State <SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Transform.translate(
        offset: const Offset(0, 25),
        child: Container(
          width: size.width * 0.626,
          height: 50,
          decoration: BoxDecoration(
            color: getWhiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                offset: const Offset(0, 4),
                color: getBlackColor.withOpacity(0.25),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 12.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 8,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Cari Wisata",
                          style: TextStyle(
                          fontSize: 15,
                          fontFamily: getCustomFont,
                          fontWeight: FontWeight.normal,
                          color: getGreyColor,
                        ),
                      ),
                    ),
                  ),
                ),
            
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      "assets/icons/Search.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}