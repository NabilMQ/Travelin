import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:travelin/model/get_started_model.dart';

CarouselController get getCarouselController {
  return GetStartedModel.carouselController;
}

ValueNotifier<int> get getDotIndex {
  return GetStartedModel.dotIndex;
}

Map<String, String> get getCarouselData {
  return GetStartedModel.carouselData;
}

bool get getIsNextPage {
  return GetStartedModel.isNextPage;
}

set setIsNextPage(bool value) {
  GetStartedModel.isNextPage = value;
}

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