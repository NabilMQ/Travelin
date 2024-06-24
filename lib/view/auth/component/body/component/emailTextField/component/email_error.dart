import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/auth_controller.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class EmailError extends StatefulWidget {
  const EmailError({ super.key });

  @override
  State <EmailError> createState() => _EmailErrorState();
}

class _EmailErrorState extends State<EmailError> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ValueListenableBuilder(
        valueListenable: getIsEmailError,
        builder: (context, isEmailErrorValue, child) {
          if (isEmailErrorValue) {
            return Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/Red Alert.svg"),
                                                  
                    const SizedBox(width: 5),

                    Text(
                      "Wrong email format",
                      style: TextStyle(
                        color: getRedColor,
                        fontFamily: getCustomFont,
                        fontSize: 9,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}