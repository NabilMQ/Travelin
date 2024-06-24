import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class TransactionCard extends StatelessWidget {
  final String orderNumber;
  final String status;
  final String image;
  final String title;
  final String location;
  final String date;
  final String tickets;
  final String price;
  final bool isCompleted;

  const TransactionCard({
    super.key,
    required this.orderNumber,
    required this.status,
    required this.image,
    required this.title,
    required this.location,
    required this.date,
    required this.tickets,
    required this.price,
    this.isCompleted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: getWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: getGreyColor, blurRadius: 5),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "No. Pesanan $orderNumber",
                style: TextStyle(color: getOrangeColor),
              ),
              Text(
                status,
                style: TextStyle(color: getOrangeColor),
              ),
            ],
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(image, width: 80, height: 80),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/date1.svg",
                            alignment: Alignment.centerLeft,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            date,
                            style: TextStyle(
                              fontSize: 12,
                              color: getGreyColor,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            tickets,
                            style: TextStyle(
                              fontSize: 12,
                              color: getGreyColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: getOrangeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (isCompleted) ...[
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add logic for Beli Lagi
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: getWhiteColor,
                    foregroundColor: getGreyColor,
                    surfaceTintColor: getTransparentColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Beli Lagi"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Add logic for Tulis Ulasan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: getOrangeColor,
                    foregroundColor: getWhiteColor,
                    surfaceTintColor: getTransparentColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Tulis Ulasan"),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}