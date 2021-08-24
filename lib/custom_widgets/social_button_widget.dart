import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {

   final String imagePath;
   final String text;

   SocialButton({ required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 140,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 40, height: 40,),
          SizedBox(width: 5),
          Text(text, style: TextStyle(color: Colors.black87, fontSize: 14),),
        ],
      )
    );
  }
}