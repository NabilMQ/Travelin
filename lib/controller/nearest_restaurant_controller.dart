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

Map <String, dynamic> getNearestRestaurantDataMenu (int index) {
  return NearestRestaurantModel.nearestRestaurantData[index].values.first["makanan"];
}

MapEntry <String, dynamic> getNearestRestaurantDataMenuIndex(int index, int elIndex) {
  return getNearestRestaurantDataMenu(index).entries.elementAt(elIndex);
}

String getNearestRestaurantDataMenuIndexName(int index, int elIndex) {
  return getNearestRestaurantDataMenuIndex(index, elIndex).key;
}

String getNearestRestaurantDataMenuIndexInformation(int index, int elIndex) {
  return getNearestRestaurantDataMenuIndex(index, elIndex).value["keterangan"];
}

int getNearestRestaurantDataMenuIndexPrice(int index, int elIndex) {
  return getNearestRestaurantDataMenuIndex(index, elIndex).value["harga"];
}

int getNearestRestaurantDataMenuLength(int index) {
  return getNearestRestaurantDataMenu(index).entries.length;
}

Future <String> getNearestRestaurantDataMenuIndexImage (int index, int elIndex) async {
  String tempMainImage = await FirebaseStorage.instanceFor(bucket: "gs://travelin-e2b24.appspot.com").ref("Restoran/${getNearestRestaurantDataName(index)}/makanan/").child(getNearestRestaurantDataMenuIndex(index, elIndex).value["foto"].toString()).getDownloadURL();
  return tempMainImage;
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