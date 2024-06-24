import 'package:flutter/material.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayContent/component/travelStayContentDescription/component/travel_stay_content_description_detailed_rating_more_detail.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayContent/component/travelStayContentDescription/component/travel_stay_content_description_location_price.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayContent/component/travelStayContentDescription/component/travel_stay_content_description_name.dart';
import 'package:travelin/view/home/component/travelStay/component/travelStayContent/component/travelStayContentDescription/component/travel_stay_content_description_type_rating.dart';

class TravelStayContentDescription extends StatefulWidget {
  const TravelStayContentDescription({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <TravelStayContentDescription> createState() => _TravelStayContentDescriptionState();
}

class _TravelStayContentDescriptionState extends State<TravelStayContentDescription> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Column(
          children: [
            TravelStayContentDescriptionName(index: widget.index),
        
            TravelStayContentDescriptionTypeRating(index: widget.index,),
        
            TravelStayContentDescriptionLocationPrice(index: widget.index),
        
            TravelStayContentDescriptionDetailedRatingMoreDetail(index: widget.index,),
          ],
        ),
      )
    );
  }
}