import 'package:flutter/material.dart';
import 'package:travelin/controller/get_started_controller.dart';
import 'package:travelin/view/auth/auth.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/carousel/carousel_content.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/next/next.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/skip_button/skip_button.dart';
import 'package:travelin/view/getStarted/get_started.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({ Key? key }) : super(key: key);

  @override
  State <SwipePage> createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onHorizontalDragUpdate: (details) {
          if (rightToLeftSwipeToAuth(details) && !isNextPage) {
            try {
              isNextPage = true;
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
          else if (rightToLeftSwipe(details)) {
            getCarouselController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
            );
          }
          else if (leftToRightSwipe(details)) {
            getCarouselController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
            );
          }
        },
        child: const Column(
          children: [
            SkipButton(),
              
            Expanded(
              flex: 3,
              child: CarouselContent()
            ),
              
            Expanded(
              flex: 2,
              child: Next(),
            )
          ],
        ),
      ),
    );
  }
}