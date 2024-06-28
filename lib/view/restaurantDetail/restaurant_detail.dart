import 'package:flutter/material.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/nearest_restaurant_controller.dart';
import 'package:travelin/view/customError/custom_error.dart';
import 'package:travelin/view/restaurantDetail/component/payButtonFood/pay_button_food.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailAppBar/restaurant_detail_app_bar.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailChooseTime/component/restaurantDetailChooseTimeContent/restaurant_detail_choose_time_content.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailChooseTime/component/restaurantDetailChooseTimeHeader/restaurant_detail_choose_time_header.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailInformation/restaurant_detail_information.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailMenu/component/restaurantDetailMenuContent/restaurant_detail_menu_content.dart';
import 'package:travelin/view/restaurantDetail/component/restaurantDetailMenu/component/restaurantDetailMenuHeader/restaurant_detail_menu_header.dart';

class RestaurantDetail extends StatefulWidget {
  const RestaurantDetail({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State <RestaurantDetail> createState() => _RestaurantDetailState();
}

// model

ValueNotifier <TimeOfDay> foodTime = ValueNotifier <TimeOfDay> (const TimeOfDay(hour: 7, minute: 0));
TimeOfDay choosedFoodTime = const TimeOfDay(hour: 7, minute: 0);

Map <String, ValueNotifier <int>> countFoodOrder = {};

ScrollController selectTimeController = ScrollController();

bool isSameTime(TimeOfDay first, TimeOfDay second) {
  if (first.hour == second.hour && first.minute == second.minute) {
    return true;
  }

  return false;
}

FoodOrderCount foodOrderCount = FoodOrderCount();

Map <String, int> get getFoodOrderCount {
  return foodOrderCount.getFoodOrderCount;
}

void initializeFoodOrderCount(int index) {
  foodOrderCount.initializeFoodOrderCount(index);
}

int get getSumOfFoodOrder {
  int count = 0;
  for (var element in getFoodOrderCount.values) {
    count += element; 
  }
  return count;
}

int getSumPriceOfFoodOrder (int indexRestaurant, Map <String, int> order) {
  int sum = 0;
  for (var element in getNearestRestaurantDataMenu(indexRestaurant).entries) {
    sum += (order.entries.where((el) => el.key == element.key).first.value * element.value["harga"]).toInt();
  }
  return sum;
}

void addFoodOrderCount (String menu) {
  foodOrderCount.addFoodOrderCount(menu);
}

void minusFoodOrderCount (String menu) {
  foodOrderCount.minusFoodOrderCount(menu);
}

class FoodOrderCount with ChangeNotifier {
  // ignore: prefer_final_fields
  Map <String, int> _foodOrderCount = {};

  Map <String, int> get getFoodOrderCount {
    return _foodOrderCount;
  }

  void initializeFoodOrderCount (int index) {
    getNearestRestaurantDataMenu(index).forEach((key, value) {
      getFoodOrderCount.addAll({key: 0});
    });
  }

  void addFoodOrderCount(String menu) {
    getFoodOrderCount.update(menu, (value) => value += 1);
    notifyListeners();
  }

  void minusFoodOrderCount(String menu) {
    getFoodOrderCount.update(menu, (value) => value -= 1);
    notifyListeners();
  }

}
// batas

class _RestaurantDetailState extends State<RestaurantDetail> {
  @override
  void initState() {
    initializeFoodOrderCount(widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 66,
                ),
                child: Column(
                  children: [
                    RestaurantDetailInformation(index: widget.index),

                    const RestaurantDetailChooseTimeHeader(),
                      
                    const SizedBox(height: 15),

                    const RestaurantDetailChooseTimeContent(),

                    const SizedBox(height: 15),
                    
                    const RestaurantDetailMenuHeader(),

                    const SizedBox(height: 15),

                    RestaurantDetailMenuContent(index: widget.index),
                    
                    const SizedBox(
                      height: 125,
                    )
                  ],
                ),
              ),
            ),
            
            const RestaurantDetailAppBar(),

            PayButtonFood(
              index: widget.index,
            ),

            const CustomError(
              message: "Please Choose Hour Between 7 and 22",
            ),
          ],
        ),
      ),
    );
  }
}