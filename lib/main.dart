import 'package:flutter/material.dart';
import 'package:foodybite/route/home.dart';

void main() => runApp(Foodybite());

class Foodybite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodybite',
      home: Home(),
    );
  }
}
