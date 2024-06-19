import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:travelin/controller/color_controller.dart';

class DetailTravel extends StatefulWidget {
  DetailTravel({Key? key}) : super(key: key);

  @override
  State<DetailTravel> createState() => _DetailTravelState();
}

class _DetailTravelState extends State<DetailTravel> {
  int _currentIndex = 0;
  final List<String> imgList = [
    'assets/images/Borobudur Full.png',
    'assets/images/Borobudur Full.png',
    'assets/images/Borobudur Full.png',
    'assets/images/Borobudur Full.png',
    'assets/images/Borobudur Full.png',
  ];

  final ValueNotifier<String> _buttonContentNotifier = ValueNotifier<String>("Buy Now");

  @override
  void dispose() {
    _buttonContentNotifier.dispose();
    super.dispose();
  }

  void _changeContent(String newContent) {
    _buttonContentNotifier.value = newContent;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: getWhiteColor,
      appBar: AppBar(
        backgroundColor: getTransparentColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              splashRadius: 0.1,
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset("assets/icons/Back Button.svg"),
              onPressed: () {},
            ),
            const SizedBox(width: 64), // Beri jarak antara ikon dan teks
            Text(
              "Detail                       ",
              style: TextStyle(fontSize: 20, fontFamily: getCustomFont, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: screenWidth * 0.9,
          decoration: BoxDecoration(
            color: getWhiteColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: getBlackColor,
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: getBlackColor,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 206,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                            items: imgList.map((item) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: getTransparentColor,
                                ),
                                child: Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                  width: 325,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: getWhiteColor,
                            ),
                            padding: EdgeInsets.all(6),
                            child: SvgPicture.asset('assets/icons/Heritage.svg', height: 26, width: 26),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: getWhiteColor,
                            ),
                            padding: EdgeInsets.all(6),
                            child: SvgPicture.asset('assets/icons/Love Red.svg', height: 26, width: 26),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: imgList.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () => setState(() {
                                  _currentIndex = entry.key;
                                }),
                                child: Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _currentIndex == entry.key
                                        ? getOrangeColor // Warna titik saat aktif
                                        : Color.fromARGB(255, 245, 240, 240), // Warna titik saat tidak aktif
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Candi Borobudur",
                    style: TextStyle(fontSize: 20, fontFamily: getCustomFont, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Magelang, Jawa Tengah",
                    style: TextStyle(fontSize: 10, fontFamily: getCustomFont, color: getBlackColor),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Dinasti Sailendra membangun peninggalan Budha terbesar di dunia antara 780-840 Masehi. Dinasti Sailendra merupakan dinasti yang berkuasa pada masa itu. Peninggalan ini dibangun sebagai tempat pemujaan Budha dan tempat ziarah. Tempat ini berisi petunjuk agar manusia menjauhkan diri dari nafsu dunia dan menuju pencerahan dan kebijaksanaan menurut Budha. Peninggalan ini ditemukan oleh Pasukan Inggris pada tahun 1814 dibawah pimpinan Sir Thomas Stamford Raffles. Area candi berhasil dibersihkan seluruhnya pada tahun 1835.",
                    style: TextStyle(fontSize: 10, fontFamily: getCustomFont),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Borobudur dibangun dengan gaya Mandala yang mencerminkan alam semesta dalam kepercayaan Budha. Struktur bangunan ini berbentuk kotak dengan empat pintu masuk dan titik pusat berbentuk lingkaran. Jika dilihat dari luar hingga ke dalam terdiri menjadi tiga bagian yaitu alam dunia yang terbagi menjadi tiga zona di bagian luar, dan alam Nirwana di bagian pusat.",
                    style: TextStyle(fontSize: 10, fontFamily: getCustomFont),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 16),
                  Text("Maps", style: TextStyle(fontSize: 20,fontFamily: getCustomFont, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Container(
                    height: 200,
                    width: screenWidth * 0.8,
                    child: Center(child: Text("Map Placeholder")),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
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
                  SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: getOrangeColor,
                        foregroundColor: getWhiteColor,
                        minimumSize: Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: ValueListenableBuilder<String>(
                        valueListenable: _buttonContentNotifier,
                        builder: (context, value, child) {
                          return Text(value, style: TextStyle(fontSize: 20, fontFamily: getCustomFont));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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
                      Text("Rating: ", style: TextStyle(fontSize: 8, fontFamily: getCustomFont)),
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
