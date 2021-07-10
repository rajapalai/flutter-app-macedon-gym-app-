import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:macedon_app/Drawer/drawer.dart';
import 'package:macedon_app/bottombar/bottomBar.dart';
import 'package:macedon_app/dashboard.dart';

import 'helpdata.dart';

class Helpcenter extends StatefulWidget {
  @override
  _HelpcenterState createState() => _HelpcenterState();
}

class _HelpcenterState extends State<Helpcenter> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        title: Row(
          children: <Widget>[Text('Help')],
        ),
        backgroundColor: Colors.cyan,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                items1.length,
                (index) => InkWell(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            items1[index]['img'],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    AutoSizeText(
                      items1[index]["name"],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              items2.length,
              (index) => InkWell(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          items2[index]['img'],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  AutoSizeText(
                    items2[index]["name"],
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
