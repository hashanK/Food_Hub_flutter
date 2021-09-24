import 'package:flutter/material.dart';
import '../constant.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(15.0, 12, 10, 12),
        decoration: BoxDecoration(
            color: textFieldBGColor, borderRadius: BorderRadius.circular(12.0)),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }
}
