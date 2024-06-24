import 'package:cloud_firestore/cloud_firestore.dart';

mixin NearestRestaurantModel {
  static Stream<QuerySnapshot<Map<String, dynamic>>> nearestRestaurantStreamData = FirebaseFirestore.instance.collection("restoran").snapshots();

  static dynamic nearestRestaurantData;
}