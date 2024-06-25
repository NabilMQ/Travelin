import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class DetailTravelReviewContent extends StatefulWidget {
  const DetailTravelReviewContent({ super.key });

  @override
  State <DetailTravelReviewContent> createState() => _DetailTravelReviewContentState();
}

class _DetailTravelReviewContentState extends State<DetailTravelReviewContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140, 
      height: 100, 
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: getBlackColor.withOpacity(0.25),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset(
                    "assets/icons/Person Gray.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
            
                const SizedBox(width: 8),
            
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Nama: Sutejo tejo", 
                          style: TextStyle(
                            fontSize: 8,
                            fontFamily: getCustomFont, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Rating: ",
                                style: TextStyle(
                                  fontSize: 8, 
                                  fontFamily: getCustomFont
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Row(
                                children: List.generate(5, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(2.5),
                                    child: SvgPicture.asset(
                                      "assets/icons/Star Orange.svg",
                                      fit: BoxFit.scaleDown,
                                    ),
                                  );
                                }),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Text(
                "Morbi ullamcorper felis enim, nec euismod mi ultricies et. Pellentesque leo nunc, varius non ultrices vel, posuere in odio. Donec auctor sem a lacus tincidunt cursus. Vestibulum sit amet semper erat. Integer sem dolor, finibus nec dui ac, egestas lobortis massa. Donec tellus tortor, vulputate ac purus a, dapibus pretium elit. Nunc vitae purus quam. Duis volutpat feugiat risus at suscipit.",
                style: TextStyle(
                  fontSize: 6,
                  fontFamily: getCustomFont
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}