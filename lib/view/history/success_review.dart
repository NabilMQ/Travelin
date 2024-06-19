import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/color_controller.dart';

class SuccessReview extends StatefulWidget {
  const SuccessReview({super.key});

  @override
  State<SuccessReview> createState() => _SuccessReviewState();
}

class _SuccessReviewState extends State<SuccessReview> {
  final ValueNotifier<String> _buttonContentNotifier =
      ValueNotifier<String>("Selanjutnya");

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
                  const Text(
                    "Ulasan Dikirim",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      "Terima kasih atas ulasan Anda! Pengalaman Anda akan membantu pelanggan lain",
                      style: TextStyle(
                        fontSize: 16,
                        color: getGreyColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle next action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: getOrangeColor,
                foregroundColor: getWhiteColor,
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: ValueListenableBuilder<String>(
                valueListenable: _buttonContentNotifier,
                builder: (context, value, child) {
                  return Text(value, style: const TextStyle(fontSize: 16));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
