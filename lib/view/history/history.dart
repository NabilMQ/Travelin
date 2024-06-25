import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class History extends StatefulWidget {
  const History ({ super.key });

  @override
  State <History> createState() => _HistoryState();
}

class NewPage extends StatelessWidget {
  final String content;
  const NewPage({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Page"),
      ),
      body: Center(
        child: Text(content),
      ),
    );
  }
}

class _HistoryState extends State<History> {
  final ValueNotifier<String> _buttonContentNotifier =
      ValueNotifier<String>("Belum Bayar");

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
    return Scaffold(
      backgroundColor: getWhiteColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  splashRadius: 0.1,
                  padding: const EdgeInsets.all(0),
                  icon: SvgPicture.asset("assets/icons/Back Button.svg"),
                  onPressed: () {},
                ),
                const Text(
                  "Transaction History",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 48,
            margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ValueListenableBuilder<String>(
                    valueListenable: _buttonContentNotifier,
                    builder: (context, value, child) {
                      return ElevatedButton(
                        onPressed: () {
                          _changeContent("Belum Bayar");
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(double.infinity, double.infinity),
                          backgroundColor: value == "Belum Bayar"
                              ? getOrangeColor
                              : getWhiteColor,
                          surfaceTintColor: getTransparentColor,
                          foregroundColor: value == "Belum Bayar"
                              ? getWhiteColor
                              : getGreyColor,
                          shadowColor: getBlackColor,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const FittedBox(
                            fit: BoxFit.scaleDown, child: Text("Belum Bayar")),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ValueListenableBuilder<String>(
                    valueListenable: _buttonContentNotifier,
                    builder: (context, value, child) {
                      return Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            _changeContent("Selesai");
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(double.infinity, double.infinity),
                            backgroundColor: value == "Selesai"
                                ? getOrangeColor
                                : getWhiteColor,
                            surfaceTintColor: getTransparentColor,
                            foregroundColor: value == "Selesai"
                                ? getWhiteColor
                                : getGreyColor,
                            shadowColor: getBlackColor,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const FittedBox(
                              fit: BoxFit.scaleDown, child: Text("Selesai")),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ValueListenableBuilder<String>(
                    valueListenable: _buttonContentNotifier,
                    builder: (context, value, child) {
                      return ElevatedButton(
                        onPressed: () {
                          _changeContent("Dibatalkan");
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(double.infinity, double.infinity),
                          backgroundColor: value == "Dibatalkan"
                              ? getOrangeColor
                              : getWhiteColor,
                          surfaceTintColor: getTransparentColor,
                          foregroundColor: value == "Dibatalkan"
                              ? getWhiteColor
                              : getGreyColor,
                          shadowColor: getBlackColor,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const FittedBox(
                            fit: BoxFit.scaleDown, child: Text("Dibatalkan")),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ValueListenableBuilder<String>(
              valueListenable: _buttonContentNotifier,
              builder: (context, value, child) {
                return IndexedStack(
                  index: value == "Belum Bayar"
                      ? 0
                      : value == "Selesai"
                          ? 1
                          : 2,
                  children: [
                    _buildPageContent("Belum Bayar"),
                    _buildPageContent("Selesai"),
                    _buildPageContent("Dibatalkan"),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPageContent(String status) {
    // You can replace this mock data with your real data
    final Map<String, List<Map<String, String>>> pageContent = {
      "Belum Bayar": [
        {
          "orderNumber": "12345678",
          "status": "Belum Dibayar",
          "image": "assets/images/Borobudur.png",
          "title": "Candi Borobudur",
          "location": "Magelang, Jawa Tengah",
          "date": "26 Mei 2024",
          "tickets": "4 Tiket",
          "price": "Rp. 1.005.000",
        },
        {
          "orderNumber": "87654321",
          "status": "Belum Dibayar",
          "image": "assets/images/Prambanan.png",
          "title": "Candi Prambanan",
          "location": "Sleman, Yogyakarta",
          "date": "27 Mei 2024",
          "tickets": "2 Tiket",
          "price": "Rp. 505.000",
        },
      ],
      "Selesai": [
        {
          "orderNumber": "11223344",
          "status": "Selesai",
          "image": "assets/images/Borobudur.png",
          "title": "Candi Borobudur",
          "location": "Magelang, Jawa Tengah",
          "date": "28 Mei 2024",
          "tickets": "3 Tiket",
          "price": "Rp. 755.000",
        },
        {
          "orderNumber": "44332211",
          "status": "Selesai",
          "image": "assets/images/Prambanan.png",
          "title": "Candi Prambanan",
          "location": "Sleman, Yogyakarta",
          "date": "29 Mei 2024",
          "tickets": "5 Tiket",
          "price": "Rp. 1.255.000",
        },
      ],
      "Dibatalkan": [
        {
          "orderNumber": "55667788",
          "status": "Dibatalkan",
          "image": "assets/images/Borobudur.png",
          "title": "Candi Borobudur",
          "location": "Magelang, Jawa Tengah",
          "date": "30 Mei 2024",
          "tickets": "2 Tiket",
          "price": "Rp. 505.000",
        },
        {
          "orderNumber": "88776655",
          "status": "Dibatalkan",
          "image": "assets/images/Prambanan.png",
          "title": "Candi Prambanan",
          "location": "Sleman, Yogyakarta",
          "date": "31 Mei 2024",
          "tickets": "4 Tiket",
          "price": "Rp. 1.005.000",
        },
      ],
    };

    return ListView.builder(
      itemCount: pageContent[status]?.length ?? 0,
      itemBuilder: (context, index) {
        final item = pageContent[status]![index];
        return Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(10),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "No. Pesanan ${item["orderNumber"]}",
                    style: TextStyle(color: getOrangeColor),
                  ),
                  Text(
                    item["status"]!,
                    style: TextStyle(color: getOrangeColor),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(item["image"]!, width: 80, height: 80),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["title"]!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            item["location"]!,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/Date.svg",
                                colorFilter: ColorFilter.mode(getGreyColor, BlendMode.srcIn),
                                alignment: Alignment.centerLeft,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                item["date"]!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: getGreyColor,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                item["tickets"]!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: getGreyColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item["price"]!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: getOrangeColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (status == "Selesai") ...[
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Tambahkan logika untuk Tulis Ulasan
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: getWhiteColor,
                          foregroundColor: getGreyColor,
                          surfaceTintColor: getTransparentColor,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text("Beli Lagi"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Tambahkan logika untuk Beli Lagi
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: getOrangeColor,
                        foregroundColor: getWhiteColor,
                        surfaceTintColor: getTransparentColor,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Tulis Ulasan",
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
