import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class IdTypeTextField extends StatefulWidget {
  const IdTypeTextField({ super.key });

  @override
  State <IdTypeTextField> createState() => _IdTypeTextFieldState();
}

class _IdTypeTextFieldState extends State<IdTypeTextField> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: ValueListenableBuilder(
        valueListenable: isIdTypeError,
        builder: (context, isIdTypeErrorValue, child) {
          return ValueListenableBuilder(
            valueListenable: isIdTypeFocused,
            builder: (context, isIdTypeFocusedValue, child) {
              return SizedBox(
                width: size.width,
                height: 50,
                child: CustomDropdown(
                  listItemPadding: const EdgeInsets.all(15),
                  closedHeaderPadding: const EdgeInsets.all(15),
                  expandedHeaderPadding: const EdgeInsets.all(15),
                  hintText: "Pilih",
                  decoration: CustomDropdownDecoration(
                    closedShadow: [
                      BoxShadow(
                        color: isIdTypeErrorValue ? getRedColor : getGreyColor,
                        blurRadius: 5,
                        spreadRadius: 0,
                      ),
                    ],
                    expandedShadow: [
                      BoxShadow(
                        color: isIdTypeErrorValue ? getRedColor : getOrangeColor,
                        blurRadius: 5,
                        spreadRadius: 0,
                      ),
                    ],
                    listItemStyle: TextStyle(
                      fontFamily: getCustomFont,
                      color: getBlackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    hintStyle: TextStyle(
                      fontFamily: getCustomFont,
                      color: isIdTypeErrorValue ? getRedColor : getGreyColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    )
                  ),
                  items: const [
                    "KTP",
                    "SIM",
                  ],
                  onChanged: (value) {
                    debugPrint("Changed to $value");
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}