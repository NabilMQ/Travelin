import 'package:flutter/material.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/component/popularTravelContentIcon/component/popular_travel_content_icon_category.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/component/popularTravelContentIcon/component/popular_travel_content_icon_favorite.dart';

class PopularTravelContentIcon extends StatefulWidget {
  const PopularTravelContentIcon({ super.key });

  @override
  State <PopularTravelContentIcon> createState() => _PopularTravelContentIconState();
}

class _PopularTravelContentIconState extends State<PopularTravelContentIcon> {
  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Row(
        children: [
          PopularTravelContentIconCategory(),
      
          PopularTravelContentIconFavorite(),
        ],
      ),
    );
  }
}