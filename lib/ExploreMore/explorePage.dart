import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:macedon_app/Drawer/drawer.dart';
import 'package:macedon_app/bottombar/bottomBar.dart';
import 'package:macedon_app/dashboard.dart';
import 'exploreData.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        title: Row(
          children: <Widget>[Text('Explore More')],
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
        padding: EdgeInsets.only(left: 8, right: 8, top: 20.0),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              items1.length,
              (index) => InkWell(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Colors.cyan, shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.cyan,
                            backgroundImage: AssetImage(items1[index]['img']),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 10.0),
                          child: AutoSizeText(
                            items1[index]["name"],
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        )
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
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Colors.cyan, shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.cyan,
                            backgroundImage: AssetImage(items2[index]['img']),
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 10.0,
                            ),
                            child: AutoSizeText(
                              items2[index]["name"],
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              items3.length,
              (index) => InkWell(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Colors.cyan, shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.cyan,
                            backgroundImage: AssetImage(items3[index]['img']),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 10.0),
                          child: AutoSizeText(
                            items3[index]["name"],
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
