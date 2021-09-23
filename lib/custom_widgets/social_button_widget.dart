import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {

   final String imagePath;
   final String text;

   SocialButton({ required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(6),
      width: size.width * 0.4,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 40, height: 40,),
          const SizedBox(width: 5),
          Text(text, style: const TextStyle(color: Colors.black87, fontSize: 14),),
        ],
      )
    );
  }
}