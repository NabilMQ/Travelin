import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';
import 'package:travelin/view/customError/custom_error.dart';
import 'package:travelin/view/hotel/hotel.dart';
import 'package:travelin/view/restaurant/restaurant.dart';
import 'package:travelin/view/restaurantDetail/restaurant_detail.dart';

class PayButtonFood extends StatefulWidget {
  const PayButtonFood({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <PayButtonFood> createState() => _PayButtonFoodState();
}

class _PayButtonFoodState extends State<PayButtonFood> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ValueListenableBuilder(
        valueListenable: showError,
        builder: (context, showErrorValue, child) {
          return AnimatedPadding(
            padding: showErrorValue ? const EdgeInsets.only(bottom: 70) : EdgeInsets.zero,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastEaseInToSlowEaseOut,
            child: ListenableBuilder(
              listenable: foodOrderCount,
              builder: (context, child) {
                return AnimatedScale(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastEaseInToSlowEaseOut,
                  scale: getSumOfFoodOrder == 0 ? 0 : 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 60,
                        margin: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color: getWhiteColor,
                          border: Border.all(
                            color: getOrangeColor,
                            strokeAlign: BorderSide.strokeAlignInside,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: getBlackColor.withOpacity(0.25),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          "$getSumOfFoodOrder item",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: getOrangeColor,
                                            fontFamily: getCustomFont,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
            
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          getNearestRestaurantDataName(widget.index),
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: getOrangeColor,
                                            fontFamily: getCustomFont,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
            
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          NumberFormat.currency(
                                            locale: 'id',
                                            symbol: 'Rp ',
                                            decimalDigits: 0,
                                          ).format(getSumPriceOfFoodOrder(widget.index, getFoodOrderCount)).toString(),
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: getOrangeColor,
                                            fontFamily: getCustomFont,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  
                                  const SizedBox(width: 10),
                                  
                                  Expanded(
                                    flex: 1,
                                    child: SvgPicture.asset(
                                      "assets/icons/Basket Buy.svg",
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.centerRight,
                                      colorFilter: ColorFilter.mode(getOrangeColor, BlendMode.srcIn),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                  
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const Hotel();
                              },
                            )
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          margin: const EdgeInsets.only(
                            bottom: 25,
                            left: 20,
                            right: 20,
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: getOrangeColor,
                            boxShadow: [
                            BoxShadow(
                              color: getBlackColor.withOpacity(0.25),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            )
                          ],
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Center(
                              child: Text(
                                "Selanjutnya",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: getCustomFont,
                                  color: getWhiteColor,
                                  fontWeight: FontWeight.w600,
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ); 
        },
      ),
    );
  }
}