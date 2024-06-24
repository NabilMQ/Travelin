import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class TextContentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          "Candi Borobudur",
          style: TextStyle(fontSize: 20,fontFamily: getCustomFont, fontWeight: FontWeight.bold),
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
      ],
    );
  }
}
