import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String btnText;    
  final Color btnTextColor;
  final double? cornerRadius;
  final Color bgColor;

  CustomButton({ required this.btnText, required this.btnTextColor , this.cornerRadius, required this.bgColor });

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.5,
      height: 50,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(cornerRadius ?? 0)
      ),
      child: Center(
        child: Text(btnText, style: TextStyle(color: btnTextColor))
      ),
    );
  }
}