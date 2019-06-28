import 'package:flutter/material.dart';
import 'package:foodybite/config/colors.dart';

class CustomText extends StatelessWidget {
  final text;

  final size;

  const CustomText(this.text, {Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          color: accentColor,
          fontFamily: "JosefinSans",
          fontSize: (this.size != null) ? this.size : 15.0,
          fontWeight: FontWeight.bold),
    );
  }
}
