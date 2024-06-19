import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  final Function(int) onRatingUpdate;

  const RatingStars({super.key, required this.rating, required this.onRatingUpdate});

  Widget _buildStar(int index) {
    return GestureDetector(
      onTap: () {
        onRatingUpdate(index);
      },
      child: SizedBox(
        width: 25,
        child: SvgPicture.asset(
          index < rating
              ? "assets/icons/Star Orange.svg"
              : "assets/icons/Star Gray.svg",
          height: 20,
          width: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) => _buildStar(index)),
    );
  }
}
