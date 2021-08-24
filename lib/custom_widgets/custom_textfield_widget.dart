import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';

class CustomTextField extends StatelessWidget {

  final String? placeholderText;
  final Widget? trailingIcon;
  final bool isSecureText;

  CustomTextField({ this.placeholderText, this.trailingIcon, required this.isSecureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: textFieldBGColor,
          borderRadius: BorderRadius.circular(15)
        ),
        child: TextField(
          obscureText: isSecureText ? true : false,
          style: TextStyle(color: labelTextColor),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: placeholderText,
            hintStyle: TextStyle(color: labelTextColor),
            suffixIcon: trailingIcon
          ),
        ),
      );
  }
}