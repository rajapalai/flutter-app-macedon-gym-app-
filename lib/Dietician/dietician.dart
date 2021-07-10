import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:macedon_app/Drawer/drawer.dart';
import 'package:macedon_app/bottombar/bottomBar.dart';

import '../dashboard.dart';
import 'dieticianData.dart';
import 'thankyoudietician.dart';

class DieticianPage extends StatefulWidget {
  @override
  _DieticianPageState createState() => _DieticianPageState();
}

class _DieticianPageState extends State<DieticianPage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        title: Row(
          children: <Widget>[Text('Dietician')],
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                'assets/e1.png',
                height: 30.0,
                width: 30.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Bhubaneswar',
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ],
        backgroundColor: Colors.cyan,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 8, right: 8),
        children: <Widget>[
          Column(
            children: List.generate(
              items.length,
              (index) => InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5)),
                              color: items[index]['color_code'],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 20.0, bottom: 20.0),
                                child: Text(
                                  items[index]['sub_name'].toString(),
                                  style: TextStyle(
                                      color: items[index]['color_code'],
                                      fontSize: 60,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                width: 100.0,
                                child: AutoSizeText(
                                  items[index]["name"],
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Rs." +
                                          items[index]['p_promotion_price']
                                              .toString(),
                                      style: TextStyle(
                                        color: items[index]['color_code'],
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Rs." +
                                          items[index]['p_price'].toString(),
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 20.0,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    FlatButton(
                                        child: Text(
                                          'PAY & CONSULT',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        color: items[index]['color_code'],
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ThankyouDietician()),
                                          );
                                        }),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
