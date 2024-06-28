import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';
import 'package:travelin/view/home/home.dart';

class Room extends StatefulWidget {
  const Room({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <Room> createState() => _RoomState();
}

List <String> name = [
  "Deluxe",
  "Super Deluxe",
  "Deluxe Premier",
  "Suite",
];

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: List.generate(name.length, (index) {
        return Container(
          width: size.width,
          height: 350,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: getWhiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: getBlackColor.withOpacity(0.25),
              ),
            ],
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: FutureBuilder(
                    future: getTravelStayDataMainImage(widget.index),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              alignment: FractionalOffset.center,
                              image: NetworkImage(
                                snapshot.data.toString(),
                              )
                            ),
                          ),
                        );
                      }

                      return const FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
              ),

              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child:  Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    name.elementAt(index),
                                    style: TextStyle(
                                      color: getBlackColor,
                                      fontFamily: getCustomFont,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),

                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/Area.svg",
                                        ),

                                        const SizedBox(width: 5),

                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                "35.0 m",
                                                style: TextStyle(
                                                  color: getBlackColor,
                                                  fontFamily: getCustomFont,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  const SizedBox(width: 7.5),

                                  Expanded(
                                    flex: 3,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/Bed.svg",
                                        ),

                                        const SizedBox(width: 5),

                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                "1 Double bed atau 2 single bed",
                                                style: TextStyle(
                                                  color: getBlackColor,
                                                  fontFamily: getCustomFont,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  const SizedBox(width: 7.5),

                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/Shower.svg",
                                        ),

                                        const SizedBox(width: 5),

                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                "Shower",
                                                style: TextStyle(
                                                  color: getBlackColor,
                                                  fontFamily: getCustomFont,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  
                                  const SizedBox(width: 7.5),

                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/Balcony.svg",
                                        ),

                                        const SizedBox(width: 5),

                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                "Balkon/Teras",
                                                style: TextStyle(
                                                  color: getBlackColor,
                                                  fontFamily: getCustomFont,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            )
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: getWhiteColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: getBlackColor.withOpacity(0.25),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  width: size.width,
                                  height: size.height,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: getBlackColor.withOpacity(0.25),
                                      ),
                                    ],
                                    color: getBrighterOrange,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        name.elementAt(index),
                                        style: TextStyle(
                                          color: getOrangeColor,
                                          fontFamily: getCustomFont,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/People.svg",
                                              fit: BoxFit.scaleDown,
                                              width: 12,
                                            ),
                                        
                                            const SizedBox(width: 5),
                                        
                                            Expanded(
                                              flex: 1,
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    "2 Dewasa",
                                                    style: TextStyle(
                                                      color: getBlackColor ,
                                                      fontFamily: getCustomFont,
                                                      fontSize: 8,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/Restaurant.svg",
                                              fit: BoxFit.scaleDown,
                                              width: 12,
                                            ),
                                        
                                            const SizedBox(width: 5),
                                        
                                            Expanded(
                                              flex: 1,
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    "Sarapan Gratis",
                                                    style: TextStyle(
                                                      color: getBlackColor ,
                                                      fontFamily: getCustomFont,
                                                      fontSize: 8,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  
                                      Expanded(
                                        flex: 3,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assets/icons/Wifi.svg",
                                                      fit: BoxFit.scaleDown,
                                                      width: 12,
                                                    ),
                                                
                                                    const SizedBox(width: 5),
                                                
                                                    SvgPicture.asset(
                                                      "assets/icons/Pet.svg",
                                                      fit: BoxFit.scaleDown,
                                                      width: 12,
                                                      colorFilter: ColorFilter.mode(getOrangeColor, BlendMode.srcIn ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ),
                                  
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Align(
                                                      alignment: Alignment.topRight,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          NumberFormat.currency(
                                                            locale: 'id',
                                                            symbol: 'Rp ',
                                                            decimalDigits: 0,
                                                          ).format(getTravelStayDataPrice(widget.index)),
                                                          style: TextStyle(
                                                            color: getOrangeColor,
                                                            fontFamily: getCustomFont,
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              
                                                  const SizedBox(width: 5),
                                              
                                                  Expanded(
                                                    flex: 1,
                                                    child: Align(
                                                      alignment: Alignment.bottomRight,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          getTravelStayDataType(widget.index) == "Hotel" ? "/kamar/malam" : "/malam",
                                                          style: TextStyle(
                                                            color: getGreyColor,
                                                            fontFamily: getCustomFont,
                                                            fontSize: 8,
                                                            fontWeight: FontWeight.w600,
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
                                    ],
                                  ),
                                ),
                              ),
                          
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/Stop.svg",
                                        fit: BoxFit.scaleDown,
                                        width: 12,
                                      ),
                                  
                                      const SizedBox(width: 5),
                                  
                                      Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              "Tidak bisa refund",
                                              style: TextStyle(
                                                color: getGreyColor ,
                                                fontFamily: getCustomFont,
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      Expanded(
                                        flex: 1,
                                        child: GestureDetector(
                                          onTap: () {
                                            for (int i = 0; i < 7; i++) {
                                              Navigator.of(context).pop();
                                            }
                                          },
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Container(
                                                width: 55,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  color: getOrangeColor,
                                                  borderRadius: BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      color: getBlackColor.withOpacity(0.25),
                                                    ),
                                                  ],
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      "Pilih",
                                                      style: TextStyle(
                                                        color: getWhiteColor,
                                                        fontFamily: getCustomFont,
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        );
      }),
    );
  }
}