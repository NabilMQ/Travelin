import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class GetStartedModel {
  static CarouselController carouselController = CarouselController();
  static ValueNotifier<int> dotIndex = ValueNotifier(0);
  static Map<String, String> carouselData = {
    "assets/images/Get Started (1).jpg": "Wujudkan Impian Liburanmu!",
    "assets/images/Get Started (2).jpg": "Temukan Ribuan Destinasi Menakjubkan!",
    "assets/images/Get Started (3).jpg": "Nikmati LiburanMu",
    "assets/images/Get Started (4).jpg": "Pesan Tiket dengan Aman dan Nyaman",
  };
  static bool isNextPage = false;
}
