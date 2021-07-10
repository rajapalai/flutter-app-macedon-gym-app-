import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:macedon_app/Drawer/drawer.dart';
import 'package:macedon_app/bottombar/bottomBar.dart';
import 'package:macedon_app/dashboard.dart';
import 'coachDetails.dart';

import '../constant.dart';

import 'colors.dart';
import 'fitnessData.dart';

class FitnessHomePage extends StatefulWidget {
  @override
  _FitnessHomePageState createState() => _FitnessHomePageState();
}

class _FitnessHomePageState extends State<FitnessHomePage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[Text('Coaches')],
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
      // drawer: MyDrawer(),
      // bottomNavigationBar: BottomBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                menus.length,
                (index) => InkWell(
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: activeIndex == index
                              ? Colors.cyan
                              : Colors.transparent,
                          border: Border.all(
                              color: activeIndex == index
                                  ? Colors.transparent
                                  : Colors.cyan),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          menus[index],
                          style: TextStyle(
                              color: activeIndex == index
                                  ? Colors.white
                                  : Colors.cyan,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(
              items.length,
              (index) => InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Row(
                            // mainAxisAlignment:
                            //     MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Hero(
                                tag: items[index]['id'].toString(),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(items[index]['img']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5.0, right: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       left: 20, right: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 200.0,
                                          child: AutoSizeText(
                                            items[index]['name'],
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),
                                            maxLines: 2,
                                          ),
                                        ),
                                        AutoSizeText(
                                          items[index]['details'],
                                          style: TextStyle(),
                                          maxLines: 2,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/reserve.png',
                                          height: 25.0,
                                          width: 25.0,
                                          color: Colors.cyan,
                                        ),
                                        AutoSizeText(
                                          items[index]['designation'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          maxLines: 2,
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                      child: Text("View Deatils",
                                          style: TextStyle(fontSize: 12.0)),
                                      style: ButtonStyle(
                                          // padding: MaterialStateProperty.all<EdgeInsets>(
                                          //     EdgeInsets.only(left: 4, right: 4)),
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.cyan),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  side: BorderSide(
                                                      color: Colors.cyan)))),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => CoachDetails(
                                                      id: items[index]['id'],
                                                      name: items[index]
                                                          ['name'],
                                                      details: items[index]
                                                          ['details'],
                                                      designation: items[index]
                                                          ['designation'],
                                                      address: items[index]
                                                          ['address'],
                                                      date: items[index]
                                                          ['date'],
                                                      img: items[index]['img'],
                                                      code: items[index]
                                                          ['code'],
                                                      p_Price: items[index]
                                                              ['p_price']
                                                          .toString(),
                                                      p_PromotionPrice: items[
                                                                  index][
                                                              'p_promotion_price']
                                                          .toString(),
                                                    )));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(color: Colors.cyan),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/greenactive.png',
                                        height: 20.0,
                                        width: 20.0,
                                      ),
                                      SizedBox(width: 3.0),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Active',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        'assets/heart.svg',
                                        height: 20.0,
                                        width: 20.0,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 3.0),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Add to Favorite',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
