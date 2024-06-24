import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class EmptyHistory extends StatefulWidget {
  const EmptyHistory({super.key});

  @override
  State<EmptyHistory> createState() => _EmptyHistoryState();
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

class _EmptyHistoryState extends State<EmptyHistory> {
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
            margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
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
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          backgroundColor: value == "Belum Bayar"
                              ? getOrangeColor
                              : getWhiteColor,
                          foregroundColor: value == "Belum Bayar"
                              ? getWhiteColor
                              : getGreyColor,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const FittedBox(
                          fit: BoxFit.scaleDown, 
                          child: Text("Belum Bayar")
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ValueListenableBuilder<String>(
                    valueListenable: _buttonContentNotifier,
                    builder: (context, value, child) {
                      return ElevatedButton(
                        onPressed: () {
                          _changeContent("Selesai");
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          backgroundColor: value == "Selesai"
                              ? getOrangeColor
                              : getWhiteColor,
                          foregroundColor: value == "Selesai"
                              ? getWhiteColor
                              : getGreyColor,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const FittedBox(
                          fit: BoxFit.scaleDown, 
                          child: Text("Selesai")
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ValueListenableBuilder<String>(
                    valueListenable: _buttonContentNotifier,
                    builder: (context, value, child) {
                      return ElevatedButton(
                        onPressed: () {
                          _changeContent("Dibatalkan");
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          backgroundColor: value == "Dibatalkan"
                              ? getOrangeColor
                              : getWhiteColor,
                          foregroundColor: value == "Dibatalkan"
                              ? getWhiteColor
                              : getGreyColor,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const FittedBox(
                          fit: BoxFit.scaleDown, 
                          child: Text("Dibatalkan")
                        ),
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

  Widget _buildPageContent(String status) {
    final Map<String, List<Map<String, String>>> pageContent = {
      "Belum Bayar": [
        {
          "image": "assets/icons/Logo Icon Orange.svg",
          "title1": "Yah kamu belum liburan",
          "title2": "Cari Wisata yang pengen kamu kunjungi sekarang juga"
        },
      ],
      "Selesai": [
        {
          "image": "assets/icons/Logo Icon Orange.svg",
          "title1": "Yah kamu belum liburan",
          "title2": "Cari Wisata yang pengen kamu kunjungi sekarang juga"
        },
      ],
      "Dibatalkan": [
        {
          "image": "assets/icons/Logo Icon Orange.svg",
          "title1": "Yah kamu belum liburan",
          "title2": "Cari Wisata yang pengen kamu kunjungi sekarang juga"
        },
      ],
    };

    return ListView.builder(
      itemCount: pageContent[status]?.length ?? 0,
      itemBuilder: (context, index) {
        final item = pageContent[status]![index];
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(item["image"]!, width: 100, height: 100),
              const SizedBox(height: 10),
              Text(
                item["title1"]!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                item["title2"]!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
