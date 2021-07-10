import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macedon_app/Drawer/drawer.dart';
import 'package:macedon_app/FitnessCoach/coachDetails.dart';
import 'package:macedon_app/bottombar/bottomBar.dart';
import 'package:macedon_app/constant.dart';
import 'package:rating_bar/rating_bar.dart';
import 'gymcenter.dart';
import '../dashboard.dart';
import 'fitness_center_data.dart';

class FitnessCenterPage extends StatefulWidget {
  @override
  _FitnessCenterPageState createState() => _FitnessCenterPageState();
}

class _FitnessCenterPageState extends State<FitnessCenterPage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        title: Row(
          children: <Widget>[Text('Fitness Center')],
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
        padding: EdgeInsets.only(left: 20, right: 20),
        children: <Widget>[
          SizedBox(
            height: 30,
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
                                          ? white
                                          : Colors.cyan,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ))),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(
                items.length,
                (index) => InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    // Hero(
                                    //   tag: items[index]['id'].toString(),
                                    //   child:
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(items[index]
                                                      ['img']
                                                  .toString()),
                                              fit: BoxFit.cover)),
                                    ),
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          // Padding(
                                          //   padding: const EdgeInsets.only(
                                          //       left: 20, right: 20),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: AutoSizeText(
                                                  items[index]['name'],
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  maxLines: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: AutoSizeText(
                                                  items[index]['details'],
                                                  style: TextStyle(
                                                      fontSize: 10.0,
                                                      color: Colors.grey),
                                                  maxLines: 2,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: RatingBar.readOnly(
                                              initialRating: 3.5,
                                              isHalfAllowed: true,
                                              size: 20.0,
                                              filledColor: Colors.yellow,
                                              halfFilledIcon: Icons.star_half,
                                              filledIcon: Icons.star,
                                              emptyIcon: Icons.star_border,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text(
                                                      items[index]['time'],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                TextButton(
                                                  child: Text("View Deatils",
                                                      style: TextStyle(
                                                          fontSize: 10.0)),
                                                  style: ButtonStyle(
                                                      foregroundColor:
                                                          MaterialStateProperty
                                                              .all<Color>(
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
                                                            builder: (_) =>
                                                                StudioGym(
                                                                  id: items[
                                                                          index]
                                                                      ['id'],
                                                                  name: items[
                                                                          index]
                                                                      ['name'],
                                                                  details: items[
                                                                          index]
                                                                      [
                                                                      'details'],
                                                                  designation: items[
                                                                          index]
                                                                      [
                                                                      'designation'],
                                                                  address: items[
                                                                          index]
                                                                      [
                                                                      'address'],
                                                                  rating: items[
                                                                          index]
                                                                      [
                                                                      'rating'],
                                                                  img: items[
                                                                          index]
                                                                      ['img'],
                                                                  time1: items[
                                                                          index]
                                                                      ['time1'],
                                                                  time2: items[
                                                                          index]
                                                                      ['time2'],
                                                                  offers: items[
                                                                          index]
                                                                      [
                                                                      'offers'],
                                                                  reviews: items[
                                                                          index]
                                                                      [
                                                                      'reviews'],
                                                                  aboutUs: items[
                                                                          index]
                                                                      [
                                                                      'About Us'],
                                                                )));
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5.0, right: 5.0, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/playstore.png',
                                          height: 40.0,
                                          width: 40.0,
                                        ),
                                        SizedBox(width: 5.0),
                                        Text(
                                          'Zumba',
                                          style: TextStyle(
                                            color: Colors.cyan,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/playstore.png',
                                          height: 40.0,
                                          width: 40.0,
                                        ),
                                        SizedBox(width: 5.0),
                                        Text(
                                          'Gym Workouts',
                                          style: TextStyle(
                                            color: Colors.cyan,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/playstore.png',
                                          height: 40.0,
                                          width: 40.0,
                                        ),
                                        SizedBox(width: 5.0),
                                        Text(
                                          'Yoga',
                                          style: TextStyle(
                                            color: Colors.cyan,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
