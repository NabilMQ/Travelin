import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/history/successReview/button_next.dart';
import 'package:travelin/view/history/successReview/description_review.dart';
import 'package:travelin/view/history/successReview/sent_review.dart';

class SuccessReview extends StatefulWidget {
  const SuccessReview({super.key});

  @override
  State<SuccessReview> createState() => _SuccessReviewState();
}

class _SuccessReviewState extends State<SuccessReview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/Check-Circle.svg"),
                  const SizedBox(height: 20),
                  SentSuccessReview(),
                  const SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: DescriptionReview(),
                  ),
                ],
              ),
            ),
          ),
          ButtonNext()
        ],
      ),
    );
  }
}
