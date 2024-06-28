import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';
import 'package:travelin/view/bookingHotel/booking_hotel.dart';
import 'package:travelin/view/detailTicket/detail_ticket.dart';

class HotelDetailButtonBuy extends StatefulWidget {
  const HotelDetailButtonBuy({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <HotelDetailButtonBuy> createState() => _HotelDetailButtonBuyState();
}

class _HotelDetailButtonBuyState extends State<HotelDetailButtonBuy> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 25,
        ),
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return BookingHotel(index: widget.index);
                  },
                )
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: getOrangeColor,
              foregroundColor: getWhiteColor,
              minimumSize: const Size(double.infinity, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Harga${getTravelStayDataType(widget.index) == "Hotel" ? "/kamar/malam" : "/malam"}",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: getWhiteColor,
                                fontFamily: getCustomFont,
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 1),
        
                      Expanded(
                        flex: 6,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              NumberFormat.currency(
                                locale: 'id',
                                symbol: 'Rp ',
                                decimalDigits: 0,
                              ).format(getTravelStayDataPrice(widget.index)),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: getWhiteColor,
                                fontFamily: getCustomFont,
                              ),
                            ),
                          ),
                        ),
                      ),
        
                      const SizedBox(height: 1),
        
                      Expanded(
                        flex: 5,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Termasuk Pajak",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: getWhiteColor,
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
                  child: Row(
                    children: [
                      const Expanded(
                        child: SizedBox.shrink(),
                      ),
          
                      const SizedBox(width: 10),
          
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: size.width,
                            height: size.height,
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: getWhiteColor,
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
                                  "Pilih Kamar",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: getOrangeColor,
                                    fontFamily: getCustomFont,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}