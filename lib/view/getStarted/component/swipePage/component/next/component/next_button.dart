import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/controller/get_started_controller.dart';
import 'package:travelin/view/auth/auth.dart';

class NextButton extends StatefulWidget {
  const NextButton({ super.key });

  @override
  State <NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          style: ButtonStyle(
            shadowColor: MaterialStatePropertyAll(getTransparentColor),
            surfaceTintColor: MaterialStatePropertyAll(getOrangeColor),
            backgroundColor: MaterialStatePropertyAll(getOrangeColor),
            foregroundColor: MaterialStatePropertyAll(getOrangeColor),
            fixedSize: MaterialStatePropertyAll(Size(size.width * 0.4, 50)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 5,
              ),
            ),
          ),
          onPressed: () {
            if (isEndCarousel()) {
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
            }
            else {
              getCarouselController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
              );
            }
          },
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: ValueListenableBuilder(
                valueListenable: getDotIndex,
                builder: (context, getDotIndexValue, child) {
                  if (getDotIndexValue != 3) {
                    return Text(
                      "Next",
                      style: TextStyle(
                        color: getWhiteColor,
                        fontFamily: getCustomFont,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    );
                  }
                  
                  return Text(
                    "Get Started",
                    style: TextStyle(
                      color: getWhiteColor,
                      fontFamily: getCustomFont,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}