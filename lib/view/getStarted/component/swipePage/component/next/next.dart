import 'package:flutter/material.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/next/component/carousel_index.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/next/component/next_button.dart';

class Next extends StatefulWidget {
  const Next({ Key? key }) : super(key: key);

  @override
  State <Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CarouselIndex(),
                        
                const SizedBox(height: 20),
                        
                const NextButton(),
            
                SizedBox(height: size.height * 0.1),
              ],
            ),
          ),
        ),
      );
  }
}