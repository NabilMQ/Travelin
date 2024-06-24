import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/travel_stay_controller.dart';

class TravelStayContentDescriptionLocationPrice extends StatefulWidget {
  const TravelStayContentDescriptionLocationPrice({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <TravelStayContentDescriptionLocationPrice> createState() => _TravelStayContentDescriptionLocationPriceState();
}

class _TravelStayContentDescriptionLocationPriceState extends State<TravelStayContentDescriptionLocationPrice> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  right: 5,
                  bottom: 5,
                ),
                child: SvgPicture.asset(
                  "assets/icons/Pointer.svg",
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Expanded(
            flex: 8,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                "1 km dari lokasi Candi Borobudur",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  fontFamily: getCustomFont,
                  color: getGreyColor,
                ),
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerRight,
              child: Text(
                NumberFormat.currency(
                  locale: 'id',
                  symbol: 'Rp ',
                  decimalDigits: 0,
                ).format(getTravelStayDataPrice(widget.index)),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: getCustomFont,
                  color: getOrangeColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}