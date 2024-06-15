import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/controller/get_started_controller.dart';
import 'package:travelin/view/auth/auth.dart';

class SkipButton extends StatefulWidget {
  const SkipButton({ super.key });

  @override
  State <SkipButton> createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ValueListenableBuilder(
            valueListenable: getDotIndex,
            builder:(context, getDotIndexValue, child) {
              return Opacity(
              opacity: getDotIndexValue == 3 ? 0 : 1,
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(getTransparentColor),
                  surfaceTintColor: MaterialStatePropertyAll(getGreyColor),
                  backgroundColor: MaterialStatePropertyAll(getGreyColor),
                  foregroundColor: MaterialStatePropertyAll(getGreyColor),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 35,
                    ),
                  ),
                ),
                onPressed: () {
                  try {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.of(context).popUntil((route) => true);
                      Navigator.of(context).pushReplacement(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => const Auth(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const Offset begin = Offset(1.0, 0.0);
                            const Offset end = Offset.zero;
                            const Curve curve = Curves.ease;
                                  
                            Animatable<Offset> tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                  
                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    });
                  } 
                  catch (error) {
                    setState(() {});
                  }
                },
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: getBlackColor,
                        fontFamily: getCustomFont,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              );
            },
          ),
        ),
      ),
    );
  }
}