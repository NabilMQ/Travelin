import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/model/hotel_detail_model.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailAppBar/hotel_detail_app_bar.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailButtonBuy/hotel_detail_button_buy.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailCarouselSlider/hotel_detail_carousel_slider.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailDescription/hotel_detail_description.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailGeneralFacility/hotel_detail_general_facility_content.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailGeneralFacility/hotel_detail_general_facility_header.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailLocation/hotel_detail_location.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailMap/hotel_detail_map.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailMap/hotel_detail_map_header.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailName/hotel_detail_name.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailPolicy/hotel_detail_policy_content.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailPolicy/hotel_detail_policy_header.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailReview/hotel_detail_review_content.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailReview/hotel_detail_review_header.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailType/hotel_detail_type.dart';
import 'package:travelin/view/hotelDetail/component/hotelDetailValueRating/hotel_detail_value_rating.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({
    super.key,
    required this.index,
  });
  
  final int index;

  @override
  State <HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {

  @override
  void initState() {
    HotelDetailModel.carouselIndex.value = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    HotelDetailModel.carouselIndex.value = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: size.width * 0.9,
                margin: const EdgeInsets.only(
                  top: 66,
                  left: 10,
                  bottom: 10,
                  right: 10,
                ),
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
                        HotelDetailCarouselSlider(index: widget.index),
                        
                        const SizedBox(height: 16),
                        
                        HotelDetailName(index: widget.index),

                        HotelDetailType(index: widget.index),
            
                        HotelDetailLocation(index: widget.index),
            
                        const SizedBox(height: 16),
            
                        const HotelDetailDescription(),
            
                        const SizedBox(height: 16),

                        const SizedBox(height: 16),
            
                        const HotelDetailReviewHeader(),

                        HotelDetailValueRating(index: widget.index),

                        const SizedBox(height: 16),
            
                        SizedBox(
                          height: 120,  // Adjusted height
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(3, (index) {
                              return const HotelDetailReviewContent();
                            })
                          ),
                        ),

                        const SizedBox(height: 16),

                        const HotelDetailGeneralFacilityHeader(),

                        const SizedBox(height: 16),

                        const HotelDetailGeneralFacilityContent(),

                        const SizedBox(height: 16),
            
                        const HotelDetailMapHeader(),
            
                        const SizedBox(height: 16),
            
                        HotelDetailMap(index: widget.index),

                        const SizedBox(height: 16),

                        const HotelDetailPolicyHeader(),

                        const SizedBox(height: 16),

                        const HotelDetailPolicyContent(),

                        const SizedBox(height: 70),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            HotelDetailButtonBuy(index: widget.index),
            
            const HotelDetailAppBar(),
          ],
        ),
      ),
    );
  }
}
