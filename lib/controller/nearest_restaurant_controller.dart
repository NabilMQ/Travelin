import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:travelin/model/nearest_restauran_model.dart';

int get getNearestRestaurantDataLength {
  return NearestRestaurantModel.nearestRestaurantData.length;
}

String getNearestRestaurantDataName (int index) {
  return NearestRestaurantModel.nearestRestaurantData[index].keys.first.toString();
}

int getNearestRestaurantDataRating (int index) {
  return NearestRestaurantModel.nearestRestaurantData[index].values.first["rating"];
}

String getNearestRestaurantDataAddress (int index) {
  return NearestRestaurantModel.nearestRestaurantData[index].values.first["alamat"].toString();
}

String getNearestRestaurantDataNear (int index) {
  return NearestRestaurantModel.nearestRestaurantData[index].values.first["sekitar"].toString();
}

String getNearestRestaurantDataInformation (int index) {
  return NearestRestaurantModel.nearestRestaurantData[index].values.first["keterangan"].toString();
}

Future <String> getNearestRestaurantDataMainImage (int index) async {
  String tempMainImage = await FirebaseStorage.instanceFor(bucket: "gs://travelin-e2b24.appspot.com").ref("Restoran/${getNearestRestaurantDataName(index)}/").child(NearestRestaurantModel.nearestRestaurantData[index].values.first["foto utama"].toString()).getDownloadURL();
  return tempMainImage;
}

void processsNearestRestaurantData(AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>? streamData) {
  NearestRestaurantModel.nearestRestaurantData = streamData?.data!.docs.map((e) => {e.id: e.data()}).toList();
}

Stream<QuerySnapshot<Map<String, dynamic>>> get getNearestRestaurantStreamData {
  return NearestRestaurantModel.nearestRestaurantStreamData;
}