import 'package:flutter/material.dart';
import 'package:travelin/view/history/tansactionHistory/transaction_card.dart';

class TransactionPage extends StatelessWidget {
  final String status;

  const TransactionPage({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
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
        return TransactionCard(
          orderNumber: item["orderNumber"]!,
          status: item["status"]!,
          image: item["image"]!,
          title: item["title"]!,
          location: item["location"]!,
          date: item["date"]!,
          tickets: item["tickets"]!,
          price: item["price"]!,
          isCompleted: status == "Selesai",
        );
      },
    );
  }
}