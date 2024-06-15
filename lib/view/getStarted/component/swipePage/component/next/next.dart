import 'package:flutter/material.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/next/component/carousel_index.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/next/component/next_button.dart';

class Next extends StatefulWidget {
  const Next({ super.key });

  @override
  State <Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CarouselIndex(),
                      
              NextButton(),

              Expanded(
                flex: 1,
                child: SizedBox.shrink(),
              ),
            ],
          ),
        ),
    );
  }
}