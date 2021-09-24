import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';

class OnboardingPage extends StatelessWidget {
  static const routeName = "/onboard_one";

  final String title;
  final String image;
  final String description;

  const OnboardingPage(
      {Key? key,
      required this.title,
      required this.image,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBGHexColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 80,
            ),
            Image.asset(image),
            const SizedBox(height: 70,),
            Text(
              title,
              style: const TextStyle(fontSize: 35, color: Colors.white),
              textAlign: TextAlign.center
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: labelTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),

          ],
        ),
      ),
    );
  }
}
