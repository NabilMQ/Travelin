
import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';
import 'package:travelin/view/restaurantDetail/restaurant_detail.dart';

class RestaurantDetailMenuContentImageAddMinus extends StatefulWidget {
  const RestaurantDetailMenuContentImageAddMinus({
    super.key,
    required this.index,
    required this.indexIndex,
  });

  final int index;
  final int indexIndex;

  @override
  State <RestaurantDetailMenuContentImageAddMinus> createState() => _RestaurantDetailMenuContentImageAddMinusState();
}

class _RestaurantDetailMenuContentImageAddMinusState extends State<RestaurantDetailMenuContentImageAddMinus> {

  ValueNotifier <bool> isMinusClicked = ValueNotifier <bool> (false);
  ValueNotifier <bool> isPlusClicked = ValueNotifier <bool> (false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Align(
        alignment: Alignment.bottomRight,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: getBlackColor.withOpacity(0.25),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 27.5,
                  height: 27.5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: getWhiteColor,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Material(
                      child: InkWell(
                        splashColor: getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Tersedia" ? getOrangeColor : getTransparentColor,
                        onTap: () async {
                          if (getFoodOrderCount.entries.where((element) => element.key == getNearestRestaurantDataMenuIndexName(widget.index, widget.indexIndex)).elementAt(0).value > 0 && getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Tersedia") {
                            minusFoodOrderCount(getNearestRestaurantDataMenuIndexName(widget.index, widget.indexIndex));
                          }
                          if (getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Tersedia") {
                            isMinusClicked.value = !isMinusClicked.value;
                            Future.delayed(const Duration(milliseconds: 200), () {
                              isMinusClicked.value = !isMinusClicked.value;
                            });
                          }
                        },
                        child: Container(
                          width: 27.5,
                          height: 27.5,
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: ValueListenableBuilder(
                              valueListenable: isMinusClicked,
                              builder: (context, isMinusClickedValue, child) {
                                return Text(
                                  "-",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Habis" ? getGreyColor : isMinusClickedValue ? getWhiteColor : getOrangeColor,
                                    fontFamily: getCustomFont,
                                  )
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                
                Container(
                  width: 27.5,
                  height: 27.5,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: getWhiteColor,
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: ListenableBuilder(
                      listenable: foodOrderCount,
                      builder: (context, child) {
                        return Text(
                          getFoodOrderCount.entries.elementAt(widget.indexIndex).value.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Habis" ? getGreyColor : getOrangeColor,
                            fontFamily: getCustomFont,
                          )
                        );
                      },
                    ),
                  ),
                ),
                  
                Container(
                  width: 27.5,
                  height: 27.5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: getWhiteColor,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Material(
                      child: InkWell(
                        splashColor: getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Tersedia" ? getOrangeColor : getTransparentColor,
                        onTap: () async {
                          if (getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Tersedia") {
                            addFoodOrderCount(getNearestRestaurantDataMenuIndexName(widget.index, widget.indexIndex));
                          }
                          if (getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Tersedia") {
                            isPlusClicked.value = !isPlusClicked.value;
                            Future.delayed(const Duration(milliseconds: 200), () {
                              isPlusClicked.value = !isPlusClicked.value;
                            });
                          }
                        },
                        child: Container(
                          width: 27.5,
                          height: 27.5,
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: ValueListenableBuilder(
                              valueListenable: isPlusClicked,
                              builder: (context, isPlusClickedValue, child) {
                                return Text(
                                  "+",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex) == "Habis" ? getGreyColor : isPlusClickedValue ? getWhiteColor : getOrangeColor,
                                    fontFamily: getCustomFont,
                                  )
                                );
                              },
                            ),
                          ),
                        ),
                      ),
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