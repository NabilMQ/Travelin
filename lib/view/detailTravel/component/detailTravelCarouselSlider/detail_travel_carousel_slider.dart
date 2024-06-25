import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/detail_travel_controller.dart';
import 'package:travelin/controller/travel_controller.dart';
import 'package:travelin/controller/travel_type_controller.dart';
import 'package:travelin/model/detail_travel_model.dart';

class DetailTravelCarouselSlider extends StatefulWidget {
  const DetailTravelCarouselSlider({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <DetailTravelCarouselSlider> createState() => _DetailTravelCarouselSliderState();
}

class _DetailTravelCarouselSliderState extends State<DetailTravelCarouselSlider> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Center(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: getWhiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: getBlackColor.withOpacity(0.25),
                  blurRadius: 5,
                ),
              ]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  aspectRatio: 16/10,
                  enableInfiniteScroll: false,
                  scrollPhysics: const ClampingScrollPhysics(),
                  onPageChanged: (index, reason) {
                    DetailTravelModel.carouselIndex.value = index;
                  },
                ),
                items: List.generate(5, (index) {
                  return FutureBuilder(
                    future: getTravelDataMainImage(widget.index),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return SizedBox(
                          height: 200,
                          width: size.width * 0.9 - 32,
                          child: Image.network(
                            snapshot.data.toString(),
                            height: size.height,
                            width: size.width,
                            fit: BoxFit.cover,
                          ),
                        );
                      }
                                        
                      return SizedBox(
                          height: 200,
                          width: size.width * 0.9 - 32,
                          child: const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: CircularProgressIndicator(),
                          ),
                      );
                    },
                  );
                })
              )
            ),
          ),
          
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: getWhiteColor,
              ),
              padding: const EdgeInsets.all(5),
              child: SvgPicture.asset(
                getTravelType.entries.firstWhere((element) => element.value == getTravelDataType(widget.index)).key.toString(),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),

          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              onTap: () {
                changeFavoriteTravelValue(widget.index);
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: getWhiteColor,
                ),
                padding: const EdgeInsets.all(5),
                child: ValueListenableBuilder(
                  valueListenable: getIsTravelFavoriteListenable(widget.index),
                  builder: (context, isTravelFavoriteListenableValue, child) {
                    return SvgPicture.asset(
                      isTravelFavoriteListenableValue ? "assets/icons/Love Red.svg" : "assets/icons/Love Grey.svg",
                      fit: BoxFit.scaleDown,
                    );
                  },
                ),
              ),
            ),
          ),
          
          Positioned(
            bottom: 8,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return GestureDetector(
                  onTap: () {
                    DetailTravelModel.carouselIndex.value = index;
                  },
                  child: ValueListenableBuilder(
                    valueListenable: getCarouselIndex,
                    builder:(context, carouseIndexValue, child) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: carouseIndexValue == index ? getOrangeColor : getGreyColor,
                        ),
                      );
                    },
                  ),
                );
              })
            ),
          ),
        ],
      ),
    );
  }
}
