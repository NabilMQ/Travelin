import 'package:flutter/material.dart';
import 'package:travelin/model/detail_travel_model.dart';

ValueNotifier <int> get getCarouselIndex {
  return DetailTravelModel.carouselIndex;
}