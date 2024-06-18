import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailTravel extends StatefulWidget {
  DetailTravel({Key? key}) : super(key: key);

  @override
  State<DetailTravel> createState() => _DetailTravelState();
}

class _DetailTravelState extends State<DetailTravel> {
  int _currentIndex = 0;
  final List<String> imgList = [
    'assets/images/Borobudur.png',
    'assets/images/Borobudur.png',
    'assets/images/Borobudur.png',
    'assets/images/Borobudur.png',
    'assets/images/Borobudur.png',
  ];

  final ValueNotifier<String> _buttonContentNotifier = ValueNotifier<String>("Selanjutnya");

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/Back Button.svg'),
          onPressed: () {},
        ),
        title: Text("Detail", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: imgList.map((item) => Container(
                        child: Center(
                          child: Image.asset(item, fit: BoxFit.cover, width: 1000),
                        ),
                      )).toList(),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(6),
                        child: SvgPicture.asset('assets/icons/Heritage.svg', height: 30, width: 30),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(6),
                        child: SvgPicture.asset('assets/icons/Love Red.svg', height: 30, width: 30),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => CarouselSlider(
                      items: imgList.map((item) => Container(
                        child: Center(
                          child: Image.asset(item, fit: BoxFit.cover, width: 1000),
                        ),
                      )).toList(),
                      options: CarouselOptions(
                        initialPage: entry.key,
                      ),
                    ),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.orange)
                            .withOpacity(_currentIndex == entry.key ? 0.9 : 0.4),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),
              Text(
                "Candi Borobudur",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "Magelang, Jawa Tengah",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 16),
              Text(
                "Dinasti Sailendra membangun peninggalan Budha terbesar di dunia antara 780-840 Masehi. Dinasti Sailendra merupakan dinasti yang berkuasa pada masa itu. Peninggalan ini dibangun sebagai tempat pemujaan Budha dan tempat ziarah. Tempat ini berisi petunjuk agar manusia menjauhkan diri dari nafsu dunia dan menuju pencerahan dan kebijaksanaan menurut Budha. Peninggalan ini ditemukan oleh Pasukan Inggris pada tahun 1814 dibawah pimpinan Sir Thomas Stamford Raffles. Area candi berhasil dibersihkan seluruhnya pada tahun 1835.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                "Borobudur dibangun dengan gaya Mandala yang mencerminkan alam semesta dalam kepercayaan Budha. Struktur bangunan ini berbentuk kotak dengan empat pintu masuk dan titik pusat berbentuk lingkaran. Jika dilihat dari luar hingga ke dalam terdiri menjadi tiga bagian yaitu alam dunia yang terbagi menjadi tiga zona di bagian luar, dan alam Nirwana di bagian pusat.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text("Maps", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Container(
                height: 200,
                width: screenWidth,
                child: Center(child: Text("Map Placeholder")),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: 16),
              Text("Review", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Container(
                height: 150,
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
                  child: Text("Buy Now"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    textStyle: TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReviewCard() {
    return Container(
      width: 250,
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 20,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama: Sutejo tejo", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text("Rating: "),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star_border, color: Colors.orange, size: 16),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            "Suka banget sama candi borobudur, udah kesini ga kerasa, candi borobudur megah banget. sangat terawat, dengan suasana yang sejuk. sangat cocok buat healing dan refreshing disini bersama keluarga ataupun sendirian.",
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
