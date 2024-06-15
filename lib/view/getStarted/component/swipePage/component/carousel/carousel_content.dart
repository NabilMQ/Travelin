import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travelin/controller/get_started_controller.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/carousel/component/carousel_static_text.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/carousel/component/carousel_text.dart';
import 'package:travelin/view/getStarted/component/swipePage/component/carousel/component/image_content.dart';

class CarouselContent extends StatefulWidget {
  const CarouselContent({ super.key });

  @override
  State <CarouselContent> createState() => _CarouselContentState();
}

class _CarouselContentState extends State<CarouselContent> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    
    return CarouselSlider(
      carouselController: getCarouselController,
      disableGesture: true,
      options: CarouselOptions(
        height: size.height,
        viewportFraction: 1,
        enableInfiniteScroll: false,
        scrollPhysics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index, reason) {
          getDotIndex.value = index;
        },
      ),
      items: getCarouselData.entries.map((e) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ImageContent(image: e.key),
                    
              CarouselText(text: e.value),
                            
              const CarouselStaticText(),
            ],
          ),
        );
      }).toList(),
    );
  }
}