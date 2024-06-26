import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';

class ChooseNearestRestaurantContent extends StatefulWidget {
  const ChooseNearestRestaurantContent({ super.key });

  @override
  State <ChooseNearestRestaurantContent> createState() => _ChooseNearestRestaurantContentState();
}

class _ChooseNearestRestaurantContentState extends State<ChooseNearestRestaurantContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: List.generate(getNearestRestaurantDataLength, (indexContent) {
        return Container(
          height: 270,
          width: size.width,
          margin: const EdgeInsets.symmetric(vertical: 15),
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
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: FutureBuilder(
                    future: getNearestRestaurantDataMainImage(indexContent),
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
                              colorFilter: getNearestRestaurantDataInformation(indexContent) == "Buka" ? null : ColorFilter.mode(getGreyColor, BlendMode.color),
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
              ),

              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              getNearestRestaurantDataName(indexContent),
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: getCustomFont,
                                color: getBlackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              getNearestRestaurantDataAddress(indexContent),
                              style: TextStyle(
                                fontSize: 8,
                                fontFamily: getCustomFont,
                                color: getBlackColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Rating: ",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: getCustomFont,
                                            color: getBlackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: List.generate(5, (index) {
                                        if (index < getNearestRestaurantDataRating(indexContent)) {
                                          return Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 2),
                                              child: SvgPicture.asset(
                                                "assets/icons/Star Orange.svg",
                                                alignment: Alignment.centerLeft,
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          );
                                        }
                                    
                                        return Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: SvgPicture.asset(
                                              "assets/icons/Star Gray.svg",
                                              alignment: Alignment.centerLeft,
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ),
                                ],
                              )
                            ),

                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    getNearestRestaurantDataInformation(indexContent),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: getCustomFont,
                                      color: getNearestRestaurantDataInformation(indexContent) == "Buka" ? getOrangeColor : getGreyColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        );
      }),
    );
  }
}