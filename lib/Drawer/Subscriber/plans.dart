import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

import 'datalist.dart';
import 'subcriptions.dart';

class SubscribingPlan extends StatefulWidget {
  @override
  _SubscribingPlanState createState() => _SubscribingPlanState();
}

class _SubscribingPlanState extends State<SubscribingPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: <Widget>[
          Column(
            children: List.generate(
              items.length,
              (index) => InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Card(
                    color: items[index]['color1'],
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: Text(
                                    items[index]['card'],
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Subcriptions()),
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3.0, horizontal: 10.0),
                                      decoration: BoxDecoration(
                                        color: items[index]['color3'],
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      child: Text(
                                        items[index]['button'],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 15.0, bottom: 8.0),
                                  child: Image.asset(
                                    items[index]['ping'],
                                    height: 20.0,
                                    width: 20.0,
                                    color: Colors.cyan,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, right: 8.0),
                                  child: Image.asset(
                                    items[index]['img'],
                                    height: 25.0,
                                    width: 25.0,
                                    color: Colors.cyan,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: EasyRichText(
                                    "\u20B9" +
                                        items[index]['price'].toString() +
                                        "/Month",
                                    patternList: [
                                      EasyRichTextPattern(
                                          style: TextStyle(
                                              fontSize: 40.0,
                                              fontWeight: FontWeight.bold),
                                          targetString: '\u20B9',
                                          superScript: true),
                                      EasyRichTextPattern(
                                          targetString:
                                              items[index]['price'].toString(),
                                          style: TextStyle(
                                              fontSize: 40.0,
                                              fontWeight: FontWeight.bold)),
                                      EasyRichTextPattern(
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                          targetString: '/Month',
                                          subScript: true),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
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
