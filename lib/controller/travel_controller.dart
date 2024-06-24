import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:travelin/model/travel_model.dart';

ValueNotifier <bool> getIsTravelFavoriteListenable (int index) {
  return TravelModel.isTravelFavorite[index]!;
}

void changeFavoriteTravelValue (int index) {
  TravelModel.isTravelFavorite[index]!.value = !TravelModel.isTravelFavorite[index]!.value;
}

int get getTravelDataLength {
  return TravelModel.travelData.length;
}

String getTravelDataName (int index) {
  return TravelModel.travelData[index].keys.first.toString();
}

String getTravelDataPrice (int index) {
  return TravelModel.travelData[index].values.first["harga"].toString();
}

String getTravelDataDescriptionDetail (int index) {
  return TravelModel.travelData[index].values.first["deskripsi singkat"].toString();
}

String getTravelDataType (int index) {
  return TravelModel.travelData[index].values.first["tipe"].toString();
}

Future <String> getTravelDataMainImage (int index) async {
  TravelModel.mainImage = await FirebaseStorage.instanceFor(bucket: "gs://travelin-e2b24.appspot.com").ref("Wisata/${getTravelDataName(index)}/").child(TravelModel.travelData[index].values.first["foto utama"].toString()).getDownloadURL();
  return TravelModel.mainImage;
}

void processsTravelData(AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>? streamData) {
  TravelModel.travelData = streamData?.data!.docs.map((e) => {e.id: e.data()}).toList();
  for (int i = 0; i < getTravelDataLength; i++) {
    TravelModel.isTravelFavorite[i] = ValueNotifier(false); 
  }
}

Stream<QuerySnapshot<Map<String, dynamic>>> get getTravelStreamData {
  return TravelModel.travelStreamData;
}