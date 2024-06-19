
import 'package:cloud_firestore/cloud_firestore.dart';

mixin TravelModel {
   static Stream<QuerySnapshot<Map<String, dynamic>>> travelStreamData = FirebaseFirestore.instance.collection("wisata").snapshots();

   static dynamic travelData;

   static late String mainImage;
}