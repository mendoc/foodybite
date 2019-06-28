import 'package:flutter/material.dart';
import 'package:foodybite/config/colors.dart';

class CustomTitle extends StatelessWidget {
  final text;

  const CustomTitle(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          color: secondColor, fontFamily: "JosefinSans Bold", fontSize: 20.0),
    );
  }
}
