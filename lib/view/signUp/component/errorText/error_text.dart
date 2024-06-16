import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/color_controller.dart';

class ErrorText extends StatefulWidget {
  const ErrorText({
    super.key,
    required this.isError,
    required this.errorMessage,
    required this.flex
  });

  final ValueListenable isError;
  final String errorMessage;
  final int flex;
  @override
  State <ErrorText> createState() => _ErrorTextState();
}

class _ErrorTextState extends State<ErrorText> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: widget.flex,
      child: ValueListenableBuilder(
        valueListenable: widget.isError,
        builder: (context, isErrorValue, child) {
          return Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Red Alert.svg",
                    colorFilter: isErrorValue ? ColorFilter.mode(getRedColor, BlendMode.srcATop) : ColorFilter.mode(getTransparentColor, BlendMode.clear),
                  ),
                                                
                  const SizedBox(width: 5),

                  Text(
                    widget.errorMessage,
                    style: TextStyle(
                      color: isErrorValue ? getRedColor : getTransparentColor,
                      fontFamily: getCustomFont,
                      fontSize: 9,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}