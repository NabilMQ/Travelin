import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  final ValueNotifier<String> _buttonContentNotifier =
      ValueNotifier<String>("Kirim");

  int _borobudurRating = 0;
  int _benoaRating = 0;

  Widget _buildStar(int index, int rating, Function(int) onTap) {
    return GestureDetector(
      onTap: () {
        setState(() {
          onTap(index);
        });
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

  void _updateBorobudurRating(int index) {
    _borobudurRating = index + 1;
  }

  void _updateBenoaRating(int index) {
    _benoaRating = index + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getWhiteColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      splashRadius: 0.1,
                      padding: const EdgeInsets.all(0),
                      icon: SvgPicture.asset("assets/icons/Back Button.svg"),
                      onPressed: () {},
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Text(
                        "Review",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 15),
                decoration: BoxDecoration(
                  color: getWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: getGreyColor, blurRadius: 5),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset("assets/images/Borobudur.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Candi Borobudur",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                          child: Text(
                            "Magelang, Jawa Tengah",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/date1.svg"),
                            Container(
                              margin: EdgeInsets.only(right: 10, left: 10),
                              child: Text(
                                "26 Mei 2024",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: getGreyColor,
                                ),
                              ),
                            ),
                            Text(
                              "4 Tiket",
                              style: TextStyle(
                                fontSize: 12,
                                color: getGreyColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 15),
                child: Text(
                  "Rating",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 20),
                child: Row(
                  children: List.generate(5, (index) {
                    return _buildStar(
                        index, _borobudurRating, _updateBorobudurRating);
                  }),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 15),
                child: Text(
                  "Tulis Ulasan",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 15, right: 20),
                padding: EdgeInsets.only(left: 10),
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
                child: SizedBox(
                  height: 100,
                  child: TextField(
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Tulis Ulasanmu Disini...",
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontFamily: getCustomFont),
                        fillColor: getGreyColor),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                decoration: BoxDecoration(
                  color: getWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: getGreyColor, blurRadius: 5),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset("assets/images/Benoa Resto.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Benoa Resto",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                          child: Text(
                            "Magelang, Jawa Tengah",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                right: 10,
                              ),
                              child: Text(
                                "1x Sapi lada Hitam",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: getGreyColor,
                                ),
                              ),
                            ),
                            SvgPicture.asset("assets/icons/Time1.svg"),
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: Text(
                                "11:30 WIB",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: getGreyColor,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "1x Es Jeruk Kelapa",
                          style: TextStyle(
                            fontSize: 12,
                            color: getGreyColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 15),
                child: Text(
                  "Rating",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 15),
                child: Row(
                  children: List.generate(5, (index) {
                    return _buildStar(index, _benoaRating, _updateBenoaRating);
                  }),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 15),
                child: Text(
                  "Tulis Ulasan",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 15, right: 20),
                padding: EdgeInsets.only(left: 10),
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
                child: SizedBox(
                  height: 100,
                  child: TextField(
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Tulis Ulasanmu Disini...",
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontFamily: getCustomFont),
                        fillColor: getGreyColor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
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
        ),
      ),
    );
  }
}
