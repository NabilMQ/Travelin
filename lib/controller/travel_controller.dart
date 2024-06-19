import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:travelin/model/travel_model.dart';

dynamic getTravelDataName (int index) {
  return TravelModel.travelData[index].keys.first.toString();
}

dynamic getTravelDataPrice (int index) {
  return TravelModel.travelData[index].values.first["harga"].toString();
}

dynamic getTravelDataDescriptionDetail (int index) {
  return TravelModel.travelData[index].values.first["deskripsi singkat"].toString();
}

dynamic getTravelDataType (int index) {
  return TravelModel.travelData[index].values.first["tipe"].toString();
}

dynamic getTravelDataMainImage (int index) async {
  TravelModel.mainImage = await FirebaseStorage.instanceFor(bucket: "gs://travelin-e2b24.appspot.com").ref().child(TravelModel.travelData[index].values.first["foto utama"].toString()).getDownloadURL();
  return TravelModel.mainImage;
}

void processsTravelData(AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>? streamData) {
  TravelModel.travelData= streamData?.data!.docs.map((e) => {e.id: e.data()}).toList();
  // debugPrint(TravelModel.travelData.toString());
}

Stream<QuerySnapshot<Map<String, dynamic>>> get getTravelStreamData {
  return TravelModel.travelStreamData;
}