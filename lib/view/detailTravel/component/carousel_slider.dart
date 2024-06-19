import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/color_controller.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> imgList;

  ImageCarousel({required this.imgList});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: getBlackColor,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 206,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: widget.imgList.map((item) {
                return Container(
                  decoration: BoxDecoration(
                    color: getTransparentColor,
                  ),
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: 325,
                  ),
                );
              }).toList(),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: getWhiteColor,
              ),
              padding: EdgeInsets.all(6),
              child: SvgPicture.asset('assets/icons/Heritage.svg', height: 26, width: 26),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: getWhiteColor,
              ),
              padding: EdgeInsets.all(6),
              child: SvgPicture.asset('assets/icons/Love Red.svg', height: 26, width: 26),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => setState(() {
                    _currentIndex = entry.key;
                  }),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == entry.key
                          ? getOrangeColor
                          : getGreyColor,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
