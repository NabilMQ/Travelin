import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DescriptionReview extends StatefulWidget {
  const DescriptionReview({super.key});

  @override
  State<DescriptionReview> createState() => _DescriptionReviewState();
}

class _DescriptionReviewState extends State<DescriptionReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Terima kasih atas ulasan Anda! Pengalaman Anda akan membantu pelanggan lain",
        style: TextStyle(
          fontFamily: getCustomFont,
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: getGreyColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}