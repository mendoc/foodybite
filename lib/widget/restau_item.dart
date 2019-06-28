import 'package:flutter/material.dart';
import 'package:foodybite/config/colors.dart';
import 'package:foodybite/widget/custom_text.dart';
import 'package:foodybite/widget/custom_title.dart';

class RestauItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.white, width: 0.5),
          boxShadow: [
            BoxShadow(
                color: accentColor.withOpacity(0.5),
                offset: Offset(0, 2.0),
                blurRadius: 10.0)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  child: Image.asset("assets/img/restau.jpg")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(0, 2.0),
                              blurRadius: 7.0)
                        ]),
                    margin: EdgeInsets.all(15.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                    child: Text(
                      "OPEN",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 13.0,
                          fontFamily: "JosefinSans Bold"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(0, 2.0),
                              blurRadius: 7.0)
                        ]),
                    margin: EdgeInsets.all(15.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 18.0,
                          color: Color(0xffffcc00),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Text(
                            "4.5",
                            style: TextStyle(
                                color: secondColor,
                                fontSize: 13.0,
                                fontFamily: "JosefinSans Bold"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CustomTitle("Happy Bones"),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13.0, vertical: 4.0),
                      margin: EdgeInsets.only(left: 7.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          gradient: LinearGradient(colors: [
                            Color(0xffffac8d),
                            Color(0xffffa196),
                            Color(0xffff90a3),
                          ])),
                      child: Text(
                        "Italian",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: "JosefinSans"),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.0, vertical: 4.0),
                      margin: EdgeInsets.only(left: 7.0),
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Text(
                        "12 km",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontFamily: "JosefinSans"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: CustomText("394 Broome St, New York, NY 10013, USA"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
