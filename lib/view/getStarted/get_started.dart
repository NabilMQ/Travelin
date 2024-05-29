import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  State <GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  CarouselController carouselController = CarouselController();  
  ValueNotifier dotIndex = ValueNotifier(0);
  Map <String, String> carouselData = {
    "assets/Get Started (1).jpg": "Wujudkan Impian Liburanmu!",
    "assets/Get Started (2).jpg": "Temukan Ribuan Destinasi Menakjubkan!",
    "assets/Get Started (3).jpg": "Nikmati LiburanMu",
    "assets/Get Started (4).jpg": "Pesan Tiket dengan Aman dan Nyaman",
  };

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: getWhiteColor,
      body: SizedBox.expand(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onHorizontalDragUpdate: (details) {
            if (details.delta.dx < 0) {
              carouselController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
              );
            }

            if (details.delta.dx > 0) {
              carouselController.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
              );
            }
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ValueListenableBuilder(
                    valueListenable: dotIndex,
                    builder:(context, value, child) {
                      return Opacity(
                      opacity: value == 3 ? 0 : 1,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shadowColor: MaterialStatePropertyAll(getTransparentColor),
                              surfaceTintColor: MaterialStatePropertyAll(getGreyColor),
                              backgroundColor: MaterialStatePropertyAll(getGreyColor),
                              foregroundColor: MaterialStatePropertyAll(getGreyColor),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                              ),
                              padding: const MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 35,
                                ),
                              ),
                            ),
                            onPressed: () {
                              // Navigator.of(context).push(
                              //   PageRouteBuilder(
                              //     pageBuilder: (context, animation, secondaryAnimation) => const Auth(),
                              //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              //       const begin = Offset(1.0, 0.0);
                              //       const end = Offset.zero;
                              //       const curve = Curves.ease;
                                          
                              //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                          
                              //       return SlideTransition(
                              //         position: animation.drive(tween),
                              //         child: child,
                              //       );
                              //     },
                              //   ),
                              // );
                            },
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                    color: getBlackColor,
                                    fontFamily: getCustomFont,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),       
                
              Expanded(
                flex: 3,
                child: CarouselSlider(
                  carouselController: carouselController,
                  disableGesture: true,
                  options: CarouselOptions(
                    height: size.height,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (index, reason) {
                      dotIndex.value = index;
                    },
                  ),
                  items: carouselData.entries.map((e) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            e.key, 
                            alignment: Alignment.bottomCenter,
                            fit: BoxFit.scaleDown,
                          ),
                                  
                          const SizedBox(height: 20),
                                
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              e.value,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: getBlackColor,
                                fontSize: 18,
                                fontFamily: getCustomFont,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                                        
                          const SizedBox(height: 10),
                                        
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Dapatkan penawaran spesial dan promo\nmenarik untuk liburan Anda",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: getBlackColor,
                                fontSize: 12,
                                fontFamily: getCustomFont,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
                
              Expanded(
                flex: 2,
                child: Padding(
                padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ValueListenableBuilder(
                            valueListenable: dotIndex,
                              builder: (context, value, child) {
                                return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(4, (index) {
                                  if (index == value) {
                                    return Container(
                                      margin: const EdgeInsets.all(5),
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: getOrangeColor,
                                        shape: BoxShape.circle,
                                      ),
                                    );
                                  }
                                    
                                  return Container(
                                    margin: const EdgeInsets.all(5),
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: getGreyColor,
                                      shape: BoxShape.circle,
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                                  
                          const SizedBox(height: 20),
                                  
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shadowColor: MaterialStatePropertyAll(getTransparentColor),
                                surfaceTintColor: MaterialStatePropertyAll(getOrangeColor),
                                backgroundColor: MaterialStatePropertyAll(getOrangeColor),
                                foregroundColor: MaterialStatePropertyAll(getOrangeColor),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                                ),
                                padding: const MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                    vertical: 7.5,
                                    horizontal: 50,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                carouselController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.fastOutSlowIn,
                                );
                              },
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                    color: getWhiteColor,
                                    fontFamily: getCustomFont,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      
                          SizedBox(height: size.height * 0.1),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}