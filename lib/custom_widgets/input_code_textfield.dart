import 'package:flutter/material.dart';
import 'package:food_hub/constant.dart';

class InputCodeTextField extends StatelessWidget {

  final String? placeholderText;
  final Widget? trailingIcon;
  final bool isSecureText;
  final double? fontsize;
  final double? leftContentPadding;
  final bool? isLastTF;

  InputCodeTextField({
    this.placeholderText,
    this.trailingIcon,
    required this.isSecureText,
    this.fontsize,
    this.leftContentPadding,
    this.isLastTF,
  });

  _checkIsLastTF(BuildContext context) {
    if (isLastTF != true) {
      return (_) => FocusScope.of(context).nextFocus();
    } else {
      return (_) => FocusScope.of(context).requestFocus(FocusNode());
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      onChanged: _checkIsLastTF(context),
      obscureText: isSecureText ? true : false,
      style: TextStyle(color: buttonBGcolor, fontSize: fontsize),
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.fromLTRB((leftContentPadding ?? 10.0), 20.0, 10.0, 20.0),
        fillColor: textFieldBGColor,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(style: BorderStyle.none, width: 0.0)),
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
