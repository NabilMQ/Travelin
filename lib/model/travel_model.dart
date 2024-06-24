
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

mixin TravelModel {
   static Stream<QuerySnapshot<Map<String, dynamic>>> travelStreamData = FirebaseFirestore.instance.collection("wisata").snapshots();

   static dynamic travelData;

   static late String mainImage;

   static Map <int, ValueNotifier <bool>> isTravelFavorite = {};
}