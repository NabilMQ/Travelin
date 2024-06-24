import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:travelin/model/travel_stay_model.dart';

int get getTravelStayDataLength {
  return TravelStayModel.travelStayData.length;
}

String getTravelStayDataName (int index) {
  return TravelStayModel.travelStayData[index].keys.first.toString();
}

int getTravelStayDataPrice (int index) {
  return TravelStayModel.travelStayData[index].values.first["harga"];
}

int getTravelStayDataRating (int index) {
  return TravelStayModel.travelStayData[index].values.first["rating"];
}

String getTravelStayDataType (int index) {
  return TravelStayModel.travelStayData[index].values.first["tipe"].toString();
}

Future <String> getTravelStayDataMainImage (int index) async {
  String tempMainImage = await FirebaseStorage.instanceFor(bucket: "gs://travelin-e2b24.appspot.com").ref("Penginapan/${getTravelStayDataName(index)}/").child(TravelStayModel.travelStayData[index].values.first["foto utama"].toString()).getDownloadURL();
  return tempMainImage;
}

void processsTravelStayData(AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>? streamData) {
  TravelStayModel.travelStayData = streamData?.data!.docs.map((e) => {e.id: e.data()}).toList();
}

Stream<QuerySnapshot<Map<String, dynamic>>> get getTravelStayStreamData {
  return TravelStayModel.travelStayStreamData;
}