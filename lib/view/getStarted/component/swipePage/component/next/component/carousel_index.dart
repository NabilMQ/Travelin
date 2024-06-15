import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/controller/get_started_controller.dart';

class CarouselIndex extends StatefulWidget {
  const CarouselIndex({ super.key });

  @override
  State <CarouselIndex> createState() => _CarouselIndexState();
}

class _CarouselIndexState extends State<CarouselIndex> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ValueListenableBuilder(
        valueListenable: getDotIndex,
          builder: (context, getDotIndexValue, child) {
            return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              if (index == getDotIndexValue) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: getOrangeColor,
                    shape: BoxShape.circle,
                  ),
                );
              }
                
              return Container(
                margin: const EdgeInsets.all(5),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: getGreyColor,
                  shape: BoxShape.circle,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}