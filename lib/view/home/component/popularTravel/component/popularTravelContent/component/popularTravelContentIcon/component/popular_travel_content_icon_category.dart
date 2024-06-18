import 'package:flutter/material.dart';

class PopularTravelContentIconCategory extends StatefulWidget {
  const PopularTravelContentIconCategory({ super.key });

  @override
  State <PopularTravelContentIconCategory> createState() => _PopularTravelContentIconCategoryState();
}

class _PopularTravelContentIconCategoryState extends State<PopularTravelContentIconCategory> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Align(
        alignment: Alignment.topLeft,
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