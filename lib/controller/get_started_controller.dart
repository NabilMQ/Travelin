import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travelin/model/get_started_model.dart';

CarouselController get getCarouselController {
  return GetStartedModel.carouselController;
}

ValueNotifier get getDotIndex {
  return GetStartedModel.dotIndex;
}

Map <String, String> get getCarouselData {
  return GetStartedModel.carouselData;
}
