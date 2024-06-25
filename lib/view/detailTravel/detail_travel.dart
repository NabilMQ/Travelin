import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/model/detail_travel_model.dart';
import 'package:travelin/view/detailTravel/component/detailTravelAppBar/detail_travel_app_bar.dart';
import 'package:travelin/view/detailTravel/component/detailTravelButtonBuy/detail_travel_button_buy.dart';
import 'package:travelin/view/detailTravel/component/detailTravelDescription/detail_travel_description.dart';
import 'package:travelin/view/detailTravel/component/detailTravelLocation/detail_travel_location.dart';
import 'package:travelin/view/detailTravel/component/detailTravelMap/detail_travel_map_header.dart';
import 'package:travelin/view/detailTravel/component/detailTravelName/detail_travel_name.dart';
import 'package:travelin/view/detailTravel/component/detailTravelReview/detail_travel_review_content.dart';
import 'package:travelin/view/detailTravel/component/detailTravelReview/detail_travel_review_header.dart';
import 'package:travelin/view/detailTravel/component/detailTravelCarouselSlider/detail_travel_carousel_slider.dart';
import 'package:travelin/view/detailTravel/component/detailTravelMap/detail_travel_map.dart';

class DetailTravel extends StatefulWidget {
  const DetailTravel({
    super.key,
    required this.index,
  });
  
  final int index;

  @override
  State <DetailTravel> createState() => _DetailTravelState();
}

class _DetailTravelState extends State<DetailTravel> {

  @override
  void initState() {
    DetailTravelModel.carouselIndex.value = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    DetailTravelModel.carouselIndex.value = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: getWhiteColor,
      appBar: const DetailAppBar(),
      body: Center(
        child: Container(
          width: size.width * 0.9,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: getWhiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: getBlackColor.withOpacity(0.25),
                blurRadius: 5,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailTravelCarouselSlider(index: widget.index),
                  
                  const SizedBox(height: 16),
                  
                  DetailTravelName(index: widget.index),

                  DetailTravelLocation(index: widget.index),

                  const SizedBox(height: 16),

                  const DetailTravelDescription(),

                  const SizedBox(height: 16),

                  const DetailTravelMapHeader(),

                  const SizedBox(height: 16),

                  DetailTravelMap(index: widget.index),

                  const SizedBox(height: 16),

                  const DetailTravelReviewHeader(),
                  
                  const SizedBox(height: 16),

                  SizedBox(
                    height: 120,  // Adjusted height
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(3, (index) {
                        return const DetailTravelReviewContent();
                      })
                    ),
                  ),

                  const SizedBox(height: 16),

                  const DetailTravelButtonBuy(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
