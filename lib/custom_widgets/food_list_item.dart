import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';

class FoodListItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const FoodListItem({Key? key, required this.imageUrl, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 120,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: buttonBGcolor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          ClipOval(
            child: Image.asset(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
