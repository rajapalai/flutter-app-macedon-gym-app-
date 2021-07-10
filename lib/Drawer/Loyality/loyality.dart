import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';

import 'package:macedon_app/Drawer/drawer.dart';

import 'package:macedon_app/bottombar/bottomBar.dart';
import 'package:rating_bar/rating_bar.dart';

import 'loyalData.dart';

class LoyalityPoint extends StatefulWidget {
  @override
  _LoyalityPointState createState() => _LoyalityPointState();
}

class _LoyalityPointState extends State<LoyalityPoint> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        title: Row(
          children: <Widget>[Text('Loyality Points')],
        ),
        backgroundColor: Colors.cyan,
      ),
      body: getBody(),
      // drawer: MyDrawer(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Column(
            children: <Widget>[
              Text(
                '135',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'Available Loyalty Points',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: List.generate(
                items.length,
                (index) => InkWell(
                      child: Card(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, bottom: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "Order ID :",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                items[index]['order_no'],
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 6.0),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "Purchase Date :",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                items[index]['date'],
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Text('Purchase Amount'),
                                          SizedBox(height: 6.0),
                                          Text("Rs" + items[index]['price'])
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Loyality Points Gained :",
                                        style: TextStyle(color: Colors.cyan),
                                      ),
                                      Text(
                                        items[index]['points'].toString(),
                                        style: TextStyle(color: Colors.cyan),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
