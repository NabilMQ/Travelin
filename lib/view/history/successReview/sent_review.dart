import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class SentSuccessReview extends StatefulWidget {
  const SentSuccessReview({super.key});

  @override
  State<SentSuccessReview> createState() => _SentReviewState();
}

class _SentReviewState extends State<SentSuccessReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Ulasan Dikirim",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: getCustomFont
        ),),
      )
    );
  }

}