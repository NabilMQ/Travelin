import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/controller/get_started_controller.dart';
import 'package:travelin/view/getStarted/component/swipePage/swipe_page.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  State <GetStarted> createState() => _GetStartedState();
}

// Update Model

bool isNextPage = false;

bool isEndCarousel() {
  return getDotIndex.value == 3;
}

bool rightToLeftSwipe(DragUpdateDetails details) {
  return details.delta.dx < -8;
}

bool rightToLeftSwipeToAuth(DragUpdateDetails details) {
  return rightToLeftSwipe(details) && isEndCarousel();
}

bool leftToRightSwipe(DragUpdateDetails details) {
  return details.delta.dx > 8;
}
// Batas Model

class _GetStartedState extends State<GetStarted> {

  @override
  void dispose() {
    getDotIndex.value = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getWhiteColor,
      body: const SwipePage(),
    );
  }
}