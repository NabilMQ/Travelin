import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interval_time_picker/interval_time_picker.dart' as ctp;
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/view/customError/custom_error.dart';
import 'package:travelin/view/restaurantDetail/restaurant_detail.dart';

class SelectTime extends StatefulWidget {
  const SelectTime({ super.key });

  @override
  State <SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () async {
          foodTime.value = await ctp.showIntervalTimePicker(
            context: context,
            initialTime: choosedFoodTime,
            interval: 30,
            initialEntryMode: ctp.TimePickerEntryMode.dialOnly,
            visibleStep: ctp.VisibleStep.thirtieths,
          ) ?? choosedFoodTime;

          if (foodTime.value.hour < 7 || foodTime.value.hour > 22) {
            foodTime.value = choosedFoodTime;
            showError.value = true;
            Future.delayed(const Duration(seconds: 3), () async {
              showError.value = false;
            });
          }

          if (foodTime.value != choosedFoodTime) {
            selectTimeController.animateTo(
              65.0 * (((foodTime.value.hour - choosedFoodTime.hour) * 2) + ((foodTime.value.minute - choosedFoodTime.minute) ~/ 30)),
              duration: const Duration(seconds: 1),
              curve: Curves.fastEaseInToSlowEaseOut,
            );
          }
    
          choosedFoodTime = foodTime.value;
          debugPrint(foodTime.value.toString());
        },
        child: Container(
          height: size.height,
          width: 35,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: getWhiteColor,
            borderRadius: BorderRadius.circular(5),
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
                child: SvgPicture.asset(
                  "assets/icons/Time.svg",
                  fit: BoxFit.scaleDown,
                  width: 18,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
        
              Expanded(
                child: SvgPicture.asset(
                  "assets/icons/Arrow Down.svg",
                  fit: BoxFit.scaleDown,
                  width: 10,
                  alignment: AlignmentDirectional.bottomCenter,
                  colorFilter: ColorFilter.mode(getBlackColor, BlendMode.srcIn),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}