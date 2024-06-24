import 'package:cloud_firestore/cloud_firestore.dart';

mixin TravelStayModel {
  static Stream<QuerySnapshot<Map<String, dynamic>>> travelStayStreamData = FirebaseFirestore.instance.collection("penginapan").snapshots();

  static dynamic travelStayData;
}