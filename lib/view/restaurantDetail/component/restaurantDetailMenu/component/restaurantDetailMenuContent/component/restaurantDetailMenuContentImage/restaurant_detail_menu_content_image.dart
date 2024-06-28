import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailMenu/component/restaurantDetailMenuContent/component/restaurantDetailMenuContentImage/component/restaurant_detail_menu_content_image_add_minus.dart';

class RestaurantDetailMenuContentImage extends StatefulWidget {
  const RestaurantDetailMenuContentImage({
    super.key,
    required this.index,
    required this.indexIndex,
  });

  final int index;
  final int indexIndex;

  @override
  State <RestaurantDetailMenuContentImage> createState() => _RestaurantDetailMenuContentImageState();
}

class _RestaurantDetailMenuContentImageState extends State<RestaurantDetailMenuContentImage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    
    return Expanded(
      flex: 5,
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            FutureBuilder(
              future: getNearestRestaurantDataMenuIndexImage(widget.index, widget.indexIndex),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: getBlackColor.withOpacity(0.25),
                          blurRadius: 5,
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: FractionalOffset.center,
                        colorFilter: getNearestRestaurantDataMenuIndexInformation(widget.index, widget.indexIndex ) == "Tersedia" ? null : ColorFilter.mode(getGreyColor, BlendMode.color),
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

            RestaurantDetailMenuContentImageAddMinus(
              index: widget.index,
              indexIndex: widget.indexIndex,
            )
          ],
        ),
      ),
    );
  }
}