import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class CustomError extends StatefulWidget {
  const CustomError({
    super.key,
    required this.message,
  });

  final String message;

  @override
  State <CustomError> createState() => _CustomErrorState();
}

ValueNotifier <bool> showError = ValueNotifier(false);

class _CustomErrorState extends State<CustomError> {
  @override
  Widget build(BuildContext context) {
        
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: ValueListenableBuilder(
        valueListenable: showError,
        builder: (context, showErrorValue, child) {
          return AnimatedScale(
            scale: showErrorValue ? 1 : 0,
            duration: const Duration(milliseconds: 200),
            child: Container(
              width: size.width,
              height: 50,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: getRedColor,
                ),
                borderRadius: BorderRadius.circular(10),
                color: getRedColor.withOpacity(0.25),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      "assets/icons/Red Alert.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
            
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          widget.message,
                          style: TextStyle(
                            color: getRedColor,
                            fontSize: 10,
                            fontFamily: getCustomFont,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        showError.value = false;
                      },
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Dismiss",
                            style: TextStyle(
                              fontFamily: getCustomFont,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: getRedColor,
                            ),
                          ),
                        ),
                      ),
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