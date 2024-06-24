import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class ReviewSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text("Review", style: TextStyle(fontSize: 20, fontFamily: getCustomFont, fontWeight: FontWeight.bold)),
        SizedBox(height: 16),
        Container(
          height: 120,  // Adjusted height
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildReviewCard(),
              _buildReviewCard(),
              _buildReviewCard(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildReviewCard() {
    return Container(
      width: 140,  // Adjusted width
      height: 100,  // Adjusted height
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: getBlackColor.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: getBlackColor.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 24,  // Adjusted size
                height: 24,  // Adjusted size
                child: SvgPicture.asset('assets/icons/Person Gray.svg'),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama: Sutejo tejo", style: TextStyle(fontSize: 8, fontFamily: getCustomFont, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text("Rating: ", style: TextStyle(fontSize: 8)),
                      Icon(Icons.star, color: getOrangeColor, size: 10),
                      Icon(Icons.star, color: getOrangeColor, size: 10),
                      Icon(Icons.star, color: getOrangeColor, size: 10),
                      Icon(Icons.star, color: getOrangeColor, size: 10),
                      Icon(Icons.star_border, color: getOrangeColor, size: 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            "Suka banget sama candi borobudur, udah kesini ga kerasa, candi borobudur megah banget. sangat terawat, dengan suasana yang sejuk. sangat cocok buat healing dan refreshing disini bersama keluarga ataupun sendirian.",
            style: TextStyle(fontSize: 6, fontFamily: getCustomFont),  // Adjusted font size
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
