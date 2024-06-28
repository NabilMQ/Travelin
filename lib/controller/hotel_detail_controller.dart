import 'package:flutter/material.dart';
import 'package:travelin/model/hotel_detail_model.dart';

ValueNotifier <int> get getCarouselIndex {
  return HotelDetailModel.carouselIndex;
}