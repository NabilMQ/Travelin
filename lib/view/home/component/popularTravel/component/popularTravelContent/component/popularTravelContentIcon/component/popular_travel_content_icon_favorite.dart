import 'package:flutter/material.dart';

class PopularTravelContentIconFavorite extends StatefulWidget {
  const PopularTravelContentIconFavorite({ super.key });

  @override
  State <PopularTravelContentIconFavorite> createState() => _PopularTravelContentIconFavoriteState();
}

class _PopularTravelContentIconFavoriteState extends State<PopularTravelContentIconFavorite> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Align(
        alignment: Alignment.topRight ,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Icon(
            Icons.abc,
          ),
        ),
      ),
    );
  }
}