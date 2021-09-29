import 'package:flutter/material.dart';
import 'package:food_hub/Data/data.dart';
import 'package:food_hub/Models/food_list.dart';
import 'package:food_hub/constant.dart';
import 'package:food_hub/custom_widgets/custom_textfield_widget.dart';
import 'package:food_hub/custom_widgets/food_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBGHexColor,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(23.0, 23.0, 23.0, 23.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: textFieldBGColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Icon(
                        Icons.menu,
                        color: labelTextColor,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Deliver to',
                            style: TextStyle(color: labelTextColor),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_downward,
                            color: labelTextColor,
                            size: 15,
                          )
                        ],
                      ),
                      Text(
                        '4102  Pretty View Lane',
                        style: TextStyle(color: buttonBGcolor),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/bgRedEcllipse.png",
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 120,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(23.0, 0, 90.0, 0),
                    child: const Text(
                      'What would you like to order',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 23.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            placeholderText: "Find for food or restaurant...",
                            isSecureText: false,
                            leadingIcon: Icon(
                              Icons.search,
                              color: labelTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: textFieldBGColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Icon(
                            Icons.menu,
                            color: buttonBGcolor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 23.0),
                        height: 120.0,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: foodItems.length,
                          itemBuilder: (BuildContext context, int index) {
                            FoodItem foodItem = foodItems[index];
                            return Container(
                              margin: const EdgeInsets.only(right: 17.0),
                              child: FoodListItem(
                                imageUrl: foodItem.imageUrl,
                                title: foodItem.title,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
