import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class BookingHotelCountContentContent extends StatefulWidget {
  const BookingHotelCountContentContent({
    super.key,
    required this.valueNotifier,
    required this.index,
    required this.text,
    required this.svg,
    required this.isRoom,
  });

  final int index;
  final ValueNotifier <int> valueNotifier;
  final String text;
  final String svg;
  final bool isRoom;

  @override
  State <BookingHotelCountContentContent> createState() => _BookingHotelCountContentContentState();
}

class _BookingHotelCountContentContentState extends State<BookingHotelCountContentContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          SizedBox(
            width: 30,
            height: 30,
            child: SvgPicture.asset(
              widget.svg,
              alignment: Alignment.center,
              fit: BoxFit.scaleDown,
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: getCustomFont,
                    color: getBlackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: getWhiteColor,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: getBlackColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Material(
                        child: InkWell(
                          splashColor: getOrangeColor,
                          onTap: () {
                            if (widget.isRoom) {
                              if (widget.valueNotifier.value > 1) {
                                widget.valueNotifier.value--;
                              }
                            }
                            else {
                              if (widget.valueNotifier.value > 0) {
                                widget.valueNotifier.value--;
                              }
                            }
                          },
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: getCustomFont,
                                    color: getBlackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(width: 5),
              
                  Container(
                    width: 45,
                    height: 25,
                    decoration: BoxDecoration(
                      color: getWhiteColor,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: getBlackColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Center(
                        child: ValueListenableBuilder(
                          valueListenable: widget.valueNotifier,
                          builder: (context, value, child) {
                            return Text(
                              value.toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: getCustomFont,
                                color: getBlackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(width: 5),
              
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: getWhiteColor,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: getBlackColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Material(
                        child: InkWell(
                          splashColor: getOrangeColor,
                          onTap: () {
                            widget.valueNotifier.value++;
                          },
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: getCustomFont,
                                    color: getBlackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}