import 'package:flutter/material.dart';
import 'package:foodybite/config/colors.dart';
import 'package:foodybite/widget/custom_text.dart';
import 'package:foodybite/widget/custom_title.dart';
import 'package:foodybite/widget/restau_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(15.0),
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                          color: accentColor.withOpacity(0.5), width: 0.5),
                      boxShadow: [
                        BoxShadow(
                            color: accentColor.withOpacity(0.2),
                            offset: Offset(1, 5.0),
                            blurRadius: 15.0)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: accentColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: CustomText("Find Restaurants"),
                          )
                        ],
                      ),
                      Icon(
                        Icons.equalizer,
                        color: accentColor,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomTitle("Trending Restaurants"),
                      CustomText(
                        "See all (45)",
                        size: 14.0,
                      )
                    ],
                  ),
                ),
                ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 15.0),
                        child: RestauItem(),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
