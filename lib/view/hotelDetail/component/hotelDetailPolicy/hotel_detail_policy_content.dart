import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class HotelDetailPolicyContent extends StatefulWidget {
  const HotelDetailPolicyContent({ super.key });

  @override
  State <HotelDetailPolicyContent> createState() => _HotelDetailPolicyContentState();
}

class _HotelDetailPolicyContentState extends State<HotelDetailPolicyContent> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 200,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Time.svg",
                        width: 15,
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.center,
                        colorFilter: ColorFilter.mode(getOrangeColor, BlendMode.srcIn),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Waktu Check-in/Check-out",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getBlackColor,
                                fontFamily: getCustomFont,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 5),

                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const SizedBox(width: 25),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Waktu Check-In",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getGreyColor,
                                fontFamily: getCustomFont,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "dari 14:00",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getBlackColor,
                                fontFamily: getCustomFont,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const SizedBox(width: 25),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Waktu Check-Out",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getGreyColor,
                                fontFamily: getCustomFont,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "sebelum 12:00",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getBlackColor,
                                fontFamily: getCustomFont,
                              ),
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

          SizedBox(height: 10),

          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Note.svg",
                        width: 15,
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.center,
                        colorFilter: ColorFilter.mode(getOrangeColor, BlendMode.srcIn),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Petunjuk Umum Check-in",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getBlackColor,
                                fontFamily: getCustomFont,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 5),

                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const SizedBox(width: 25),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Anak umur 1 - 4 tahun: free of charge (sharing bed with parent)",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getGreyColor,
                                fontFamily: getCustomFont,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const SizedBox(width: 25),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Anak umur 5-11 tahun: additional berakfast Rp. 121.000",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getGreyColor,
                                fontFamily: getCustomFont,
                              ),
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

          SizedBox(height: 10),

          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Pet.svg",
                        width: 15,
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.center,
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Hewan Peliharaan",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getBlackColor,
                                fontFamily: getCustomFont,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const SizedBox(width: 25),

                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Hewan peliharaan tidak diperbolehkan berada di akomodasi",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: getGreyColor,
                                fontFamily: getCustomFont,
                              ),
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

          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Baca Selengkapnya",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: getOrangeColor,
                          fontFamily: getCustomFont,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}