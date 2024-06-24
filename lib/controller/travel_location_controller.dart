import 'package:travelin/model/travel_location_model.dart';

Map <String, String> get getLocationDataFirstRow {
  Map <String, String> result = {};
  int maxLength = TravelLocationModel.logo.length ~/ 2;
  for (int i = 0; i < maxLength; i++) {
    result.addAll({TravelLocationModel.logo.keys.elementAt(i): TravelLocationModel.logo.values.elementAt(i)});
  }
  return result;
} 

Map <String, String> get getLocationDataSecondRow {
  Map <String, String> result = {};
  int maxLength = TravelLocationModel.logo.length;
  for (int i = maxLength ~/ 2; i < maxLength; i++) {
    result.addAll({TravelLocationModel.logo.keys.elementAt(i): TravelLocationModel.logo.values.elementAt(i)});
  }

  return result;
} 