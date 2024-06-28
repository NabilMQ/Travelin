import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelin/controller/travel_controller.dart';
import 'package:travelin/model/travel_model.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelContent/popular_travel_content.dart';
import 'package:travelin/view/home/component/popularTravel/component/popularTravelHeader/popular_travel_header.dart';

class PopularTravel extends StatefulWidget {
  const PopularTravel({ super.key });

  @override
  State <PopularTravel> createState() => _PopularTravelState();
}

class _PopularTravelState extends State<PopularTravel> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 270,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const PopularTravelHeader(),

          StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: TravelModel.travelStreamData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                processsTravelData(snapshot);
                return const PopularTravelContent();
              }
          
              return const Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}