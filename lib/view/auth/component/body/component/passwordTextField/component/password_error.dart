import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/auth_controller.dart';
import 'package:travelin/controller/color_controller.dart';


class PasswordError extends StatefulWidget {
  const PasswordError({ super.key });

  @override
  State <PasswordError> createState() => _PasswordErrorState();
}

class _PasswordErrorState extends State<PasswordError> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ValueListenableBuilder(
        valueListenable: getIsPasswordError,
        builder: (context, isPasswordErrorValue, child) {
          if (isPasswordErrorValue) {
            return Row(
              children: [
                SvgPicture.asset("assets/icons/Red Alert.svg"),
                                
                const SizedBox(width: 5),

                Text(
                  "Minimum password length is 8 character",
                  style: TextStyle(
                    color: getRedColor,
                    fontFamily: getCustomFont,
                    fontSize: 9,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            );
          }
      
          return const SizedBox.shrink();
        },
      ),
    );
  }
}