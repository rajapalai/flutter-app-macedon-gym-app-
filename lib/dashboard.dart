import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:macedon_app/bottombar/bottomBar.dart';

import 'package:macedon_app/membershipChannels/fitness.dart';
import 'package:macedon_app/qr_code_scanner.dart';
import 'Dietician/dietician.dart';
import 'ExploreMore/explorePage.dart';
import 'Fitness Center/fitnessHome.dart';

import 'FitnessCoach/fitnessHomePage.dart';
import 'FitnessTV/fitnessTV.dart';
import 'ShopPage/shopHomePage.dart';
import 'profile.dart';
import 'Drawer/drawer.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Position _currentPosition;
  String _currentAddress;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure to Exit ?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {});
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text('Yes')),
            ],
          ),
        );
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text("Amarjeet Palai"),
            actions: <Widget>[
              // IconButton(
              //   icon: Icon(Icons.add_location),
              //   onPressed: () {},
              // ),
              // Text('Bhubaneswar'),
              Row(
                children: <Widget>[
                  if (_currentAddress != null) Text(_currentAddress),
                  IconButton(
                    icon: Icon(Icons.add_location),
                    onPressed: () {
                      _getCurrentLocation();
                    },
                  ),
                ],
              ),
              SizedBox(
                width: 8.0,
              )
            ],
            backgroundColor: Colors.cyan,
            elevation: 0,
            leading: Builder(builder: (context) {
              return IconButton(
                  icon: Image.asset('assets/user.png'),
                  onPressed: () => Scaffold.of(context).openDrawer());
            }),
          ),
          drawer: MyDrawer(),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  //////////////////////////// CAROUSEL SECTION //////////////////////////////////

                  Center(
                    child: CarouselSlider(
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 15 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                        items: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/banner-2.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/banner.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/banner-1.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),

                  ////////////////////////////// GRID CARDS ///////////////////////////////////////////

                  Container(
                    child: GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 16.0 / 12.0,
                      ),
                      children: <Widget>[
                        Container(
                          child: InkWell(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Image.asset(
                                      'assets/b1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(25.0),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "FITNESS",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: 10.0,
                                            // ),
                                            Container(
                                              child: Text(
                                                "CENTER",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FitnessCenterPage(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          child: InkWell(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Image.asset(
                                      'assets/b2.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(25.0),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "DIETICIAN",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: 10.0,
                                            // ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DieticianPage(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          child: InkWell(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Image.asset(
                                      'assets/b3.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(25.0),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "FITNESS",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: 10.0,
                                            // ),
                                            Container(
                                              child: Text(
                                                "COACH",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FitnessHomePage(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          child: InkWell(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Image.asset(
                                      'assets/b4.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(25.0),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "EXPLORE",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "MORE",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: 10.0,
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ExplorePage(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0),

                  SizedBox(
                      height: 120.0,
                      child: Carousel(
                        images: [
                          ExactAssetImage("assets/banner-1.png"),
                          ExactAssetImage("assets/banner-2.png"),
                          ExactAssetImage("assets/banner.png"),
                          ExactAssetImage("assets/banner-1.png"),
                          ExactAssetImage("assets/banner-2.png"),
                          ExactAssetImage("assets/banner.png"),
                        ],
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.lightGreenAccent,
                        indicatorBgPadding: 5.0,
                        autoplay: true,
                        // dotBgColor: Colors.purple.withOpacity(0.5),
                        borderRadius: false,
                      )),

                  SizedBox(
                    height: 50.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Text.rich(TextSpan(
                            text: 'DAILY ',
                            style: TextStyle(fontSize: 25, color: Colors.cyan),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'ACTIVITY',
                                  style: TextStyle(
                                      color: Colors.cyan,
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 3)),
                              // can add more TextSpans here...
                            ],
                          )),
                          SizedBox(
                            width: 15.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/calendar.png',
                            height: 30.0,
                            width: 30.0,
                          ),
                          Text(
                            ' Friday',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            ' 23-04-2021',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/d1.png',
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              '3,258',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'STEPS',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 8,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/d1.png',
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              '1.4',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'KILOMETERS',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 8,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/d1.png',
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              '104',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'CALORIES',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 8,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //////////////////////// BOTTOM BAR //////////////////////////////////

          bottomNavigationBar: BottomBar()),
    );
  }

  _getCurrentLocation() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
        _getAddressFromLatLng();
      });
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = placemarks[0];

      setState(() {
        _currentAddress =
            "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }
}
