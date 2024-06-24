import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/get_started_controller.dart';
import 'package:travelin/view/getStarted/component/swipePage/swipe_page.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({ super.key });

  @override
  State <GetStarted> createState() => _GetStartedState();
}

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
      body: const SwipePage()
    );
  }
}