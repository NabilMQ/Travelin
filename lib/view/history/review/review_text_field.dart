import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class ReviewTextField extends StatelessWidget {
  const ReviewTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: getGreyColor,
            blurRadius: 5,
          ),
        ],
      ),
      child: const SizedBox(
        height: 100,
        child: TextField(
          style: TextStyle(fontSize: 12),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: "Tulis Ulasanmu Disini...",
            hintStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}