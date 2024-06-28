import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class HotelDetailGeneralFacilityContent extends StatefulWidget {
  const HotelDetailGeneralFacilityContent({ super.key });

  @override
  State <HotelDetailGeneralFacilityContent> createState() => _HotelDetailGeneralFacilityContentState();
}

class _HotelDetailGeneralFacilityContentState extends State<HotelDetailGeneralFacilityContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 100,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset(
                          "assets/icons/Restaurant.svg"
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Restoran",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                fontFamily: getCustomFont,
                                color: getBlackColor,
                              )
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset(
                          "assets/icons/24 Hours.svg"
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Resepsionis 24 Jam",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                fontFamily: getCustomFont,
                                color: getBlackColor,
                              )
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset(
                          "assets/icons/AC.svg"
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "AC",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                fontFamily: getCustomFont,
                                color: getBlackColor,
                              )
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset(
                          "assets/icons/Parking.svg"
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Parkir",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                fontFamily: getCustomFont,
                                color: getBlackColor,
                              )
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset(
                          "assets/icons/Pool.svg"
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Kolam Renang",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                fontFamily: getCustomFont,
                                color: getBlackColor,
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Lihat Semua Fasilitas",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: getCustomFont,
                    color: getOrangeColor,
                  )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}