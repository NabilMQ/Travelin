import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailTravelMap extends StatefulWidget {
  const DetailTravelMap({
    super.key,
    required this.index,
  });
  
  final int index;

  @override
  State <DetailTravelMap> createState() => _DetailTravelMapState();
}

class _DetailTravelMapState extends State<DetailTravelMap> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return DecoratedBox(
      decoration: BoxDecoration(
      boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: getBlackColor.withOpacity(0.25),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 200,
          width: size.width * 0.8,
          color: getWhiteColor,
          child: FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(getTravelDataCoordinate(widget.index).latitude, getTravelDataCoordinate(widget.index).longitude),
              initialZoom: 10,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: "com.example.flutter_maps_test",
              ),
        
              Stack(
                children: [
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: LatLng(getTravelDataCoordinate(widget.index).latitude, getTravelDataCoordinate(widget.index).longitude),
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          "assets/icons/Pointer.svg",
                          alignment: Alignment.center,
                          colorFilter: ColorFilter.mode(getOrangeColor, BlendMode.srcIn),
                        ),
                      )
                    ],
                  )
                ],
              ),
        
              SafeArea(
                child: RichAttributionWidget(
                  attributions: [
                    TextSourceAttribution(
                      'OpenStreetMap contributors',
                      onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}