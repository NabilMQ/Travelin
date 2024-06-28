import 'package:flutter/material.dart';
import 'package:travelin/view/hotel/component/hotelContent/component/travelStayContentDescription/component/hotel_content_description_detailed_rating_more_detail.dart';
import 'package:travelin/view/hotel/component/hotelContent/component/travelStayContentDescription/component/hotel_content_description_location_price.dart';
import 'package:travelin/view/hotel/component/hotelContent/component/travelStayContentDescription/component/hotel_content_description_name.dart';
import 'package:travelin/view/hotel/component/hotelContent/component/travelStayContentDescription/component/hotel_content_description_type_rating.dart';
class HotelContentDescription extends StatefulWidget {
  const HotelContentDescription({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <HotelContentDescription> createState() => _HotelContentDescriptionState();
}

class _HotelContentDescriptionState extends State<HotelContentDescription> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Column(
          children: [
            HotelContentDescriptionName(index: widget.index),
        
            HotelContentDescriptionTypeRating(index: widget.index,),
        
            HotelContentDescriptionLocationPrice(index: widget.index),
        
            HotelContentDescriptionDetailedRatingMoreDetail(index: widget.index,),
          ],
        ),
      )
    );
  }
}