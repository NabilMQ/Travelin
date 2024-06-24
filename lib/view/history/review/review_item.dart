import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class ReviewItem extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final String date;
  final String tickets;
  final int rating;
  final Function(int) onRatingUpdate;

  const ReviewItem({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.date,
    required this.tickets,
    required this.rating,
    required this.onRatingUpdate,
  });

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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: getGreyColor, blurRadius: 5),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Image.asset(image),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: Text(
                      location,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      if (date.contains(":"))
                        SvgPicture.asset("assets/icons/Time1.svg")
                      else
                        SvgPicture.asset("assets/icons/date1.svg"),
                      Container(
                        margin: const EdgeInsets.only(right: 10, left: 10),
                        child: Text(
                          date,
                          style: TextStyle(
                            fontSize: 12,
                            color: getGreyColor,
                          ),
                        ),
                      ),
                      Text(
                        tickets,
                        style: TextStyle(
                          fontSize: 12,
                          color: getGreyColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, bottom: 15),
            child: const Text(
              "Rating",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              children: List.generate(5, (index) => _buildStar(index)),
            ),
          ),
        ],
      ),
    );
  }
}