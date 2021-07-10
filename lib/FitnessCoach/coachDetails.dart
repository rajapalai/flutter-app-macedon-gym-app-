import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:line_icons/line_icons.dart';
import 'package:macedon_app/bottombar/bottomBar.dart';
import 'package:macedon_app/constant.dart';

import 'colors.dart';
import 'fitnessData.dart';
import 'fitnesstrainner.dart';

class CoachDetails extends StatefulWidget {
  final int id;
  final String name;
  final String details;
  final String designation;
  final String address;
  final String img;
  final String code;
  final String p_Price;
  final String date;
  final String p_PromotionPrice;

  CoachDetails(
      {this.id,
      this.name,
      this.details,
      this.designation,
      this.address,
      this.img,
      this.code,
      this.date,
      this.p_Price,
      this.p_PromotionPrice});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<CoachDetails> {
  int activeIndex = 0;
  String _singleValue = "Text alignment right";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      // bottomNavigationBar: BottomBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Hero(
            tag: widget.id.toString(),
            child: SizedBox(
                height: 250.0,
                width: 450.0,
                child: Carousel(
                  images: [
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.black,
                  indicatorBgPadding: 5.0,
                  autoplay: false,
                  dotBgColor: Colors.blueGrey.withOpacity(0.5),
                  borderRadius: false,
                )),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                IconButton(
                    icon: SvgPicture.asset("assets/heart.svg"), onPressed: null)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Text(
                  widget.details,
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/reserve.png',
                  color: Colors.cyan,
                  height: 30.0,
                  width: 30.0,
                ),
                Text(
                  widget.designation,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              widget.address,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Divider(
            thickness: 3,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  new ListTile(
                    leading: new MyBullet(),
                    title: new Text(
                      '1 on 1 Personal Training',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: new MyBullet(),
                    title: new Text(
                      'Group Fitness Instruction',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: new MyBullet(),
                    title: new Text(
                      'Weight Management Expert',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: new MyBullet(),
                    title: new Text(
                      'Strength & Conditioning Expert',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              )),
          Divider(),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  package.length,
                  (index) => InkWell(
                    onTap: () {
                      setState(() {
                        activeIndex = index;
                      });
                    },
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
                          package[index],
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
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RadioButton(
                  description: "1 on 1 Session",
                  value: "Text alignment right",
                  groupValue: _singleValue,
                  onChanged: (value) => setState(
                    () => _singleValue = value,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          widget.p_Price + " RS",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.cyan,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          widget.p_PromotionPrice + " RS",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              decoration: TextDecoration.lineThrough),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Container(
                //   child: FlatButton(
                //     child: Text(
                //       'BOOK NOW',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //     color: Colors.cyan,
                //     textColor: Colors.white,
                //     onPressed: () {},
                //   ),
                // ),
                Container(
                  child: FlatButton(
                    child: Text(
                      'CHOOSE YOUR SLOT',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.cyan,
                    textColor: Colors.white,
                    onPressed: () {
                      showAnimatedDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return Dialog(
                            insetPadding: EdgeInsets.all(10),
                            // shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(10)),
                            elevation: 8,
                            child: Container(
                              width: double.infinity,
                              height: 650,
                              child: ListView(
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Text(
                                      "You are Scheduling a Session with Trainer K Ravi Kumar on 21/04/2021 at 15:21.",
                                      style: TextStyle(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          'Choose a Date & Time Slot',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                        FlatButton(
                                          child: Text(
                                            'PICK DATE',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          color: Colors.cyan,
                                          textColor: Colors.white,
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          date1.length,
                                          (index) => InkWell(
                                            onTap: () {
                                              setState(() {
                                                activeIndex = index;
                                              });
                                            },
                                            child: Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: activeIndex == index
                                                      ? Colors.cyan
                                                      : Colors.transparent,
                                                  border: Border.all(
                                                      color: activeIndex ==
                                                              index
                                                          ? Colors.transparent
                                                          : Colors.cyan),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                  date1[index],
                                                  style: TextStyle(
                                                      color:
                                                          activeIndex == index
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
                                    height: 10.0,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          date1.length,
                                          (index) => InkWell(
                                            onTap: () {
                                              setState(() {
                                                activeIndex = index;
                                              });
                                            },
                                            child: Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: activeIndex == index
                                                      ? Colors.cyan
                                                      : Colors.transparent,
                                                  border: Border.all(
                                                      color: activeIndex ==
                                                              index
                                                          ? Colors.transparent
                                                          : Colors.cyan),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                  date1[index],
                                                  style: TextStyle(
                                                      color:
                                                          activeIndex == index
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
                                    height: 10.0,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          date1.length,
                                          (index) => InkWell(
                                            onTap: () {
                                              setState(() {
                                                activeIndex = index;
                                              });
                                            },
                                            child: Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: activeIndex == index
                                                      ? Colors.cyan
                                                      : Colors.transparent,
                                                  border: Border.all(
                                                      color: activeIndex ==
                                                              index
                                                          ? Colors.transparent
                                                          : Colors.cyan),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                  date1[index],
                                                  style: TextStyle(
                                                      color:
                                                          activeIndex == index
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
                                    height: 10.0,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          date1.length,
                                          (index) => InkWell(
                                            onTap: () {
                                              setState(() {
                                                activeIndex = index;
                                              });
                                            },
                                            child: Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: activeIndex == index
                                                      ? Colors.cyan
                                                      : Colors.transparent,
                                                  border: Border.all(
                                                      color: activeIndex ==
                                                              index
                                                          ? Colors.transparent
                                                          : Colors.cyan),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                  date1[index],
                                                  style: TextStyle(
                                                      color:
                                                          activeIndex == index
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
                                    height: 30.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Text(
                                      "TERMS & CONDITIONS",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 10.0),
                                        ExpandableText(
                                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
                                          expandText: 'show more',
                                          collapseText: 'show less',
                                          maxLines: 1,
                                          linkColor: Colors.blue,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Container(
                                      child: FlatButton(
                                        child: Text(
                                          'CONFIRM & PROCEED',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        color: Colors.cyan,
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      FitnessTrainner()));
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        animationType: DialogTransitionType.slideFromBottomFade,
                        curve: Curves.fastOutSlowIn,
                        duration: Duration(seconds: 1),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 15.0,
      width: 15.0,
      decoration: new BoxDecoration(
        color: Colors.cyan,
        shape: BoxShape.circle,
      ),
    );
  }
}
