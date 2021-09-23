import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';

class CustomTextField extends StatelessWidget {
  final String? placeholderText;
  final Widget? trailingIcon;
  final bool isSecureText;

  CustomTextField(
      {this.placeholderText, this.trailingIcon, required this.isSecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isSecureText ? true : false,
      style: TextStyle(color: labelTextColor),
      decoration: InputDecoration(
        fillColor: textFieldBGColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(style: BorderStyle.none, width: 0.0)
        ),
        hintText: placeholderText,
        hintStyle: TextStyle(color: labelTextColor),
        suffixIcon: trailingIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: buttonBGcolor, width: 1.0),
        ),
      ),
    );
  }
}
