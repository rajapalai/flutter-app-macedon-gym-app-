import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:macedon_app/bottombar/bottomBar.dart';

import '../dashboard.dart';

class FitnessTV extends StatefulWidget {
  @override
  _FitnessTVState createState() => _FitnessTVState();
}

class _FitnessTVState extends State<FitnessTV> {
  static const IconData location_on =
      IconData(0xe840, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/b4.png',
            ),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                            child: Image.asset(
                              'assets/back.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              //
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                height: MediaQuery.of(context).size.height * 0.71,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("FITNESS - TV",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 40),
                      //
                      //
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
              // Column(
              //   children: [
              //     Container(
              //       child: BottomNavigationBar(
              //         type: BottomNavigationBarType.fixed,
              //         items: [
              //           BottomNavigationBarItem(
              //             title: Text(
              //               'HOME',
              //               style: TextStyle(
              //                 fontSize: 15.0,
              //                 color: Colors.blue,
              //               ),
              //             ),
              //             icon: ImageIcon(
              //               AssetImage('assets/home.png'),
              //               color: Colors.indigo[300],
              //               size: 40.0,
              //             ),
              //           ),
              //           BottomNavigationBarItem(
              //             title: Text(
              //               'MACEDON',
              //               style: TextStyle(
              //                 fontSize: 15.0,
              //                 color: Colors.blue,
              //               ),
              //             ),
              //             icon: ImageIcon(
              //               AssetImage('assets/macedon.png'),
              //               color: Colors.indigo[300],
              //               size: 40.0,
              //             ),
              //           ),
              //           BottomNavigationBarItem(
              //             title: Text(
              //               'DIETICIAN',
              //               style: TextStyle(
              //                 fontSize: 15.0,
              //                 color: Colors.blue,
              //               ),
              //             ),
              //             icon: ImageIcon(
              //               AssetImage('assets/dietician.png'),
              //               color: Colors.indigo[300],
              //               size: 40.0,
              //             ),
              //           ),
              //           BottomNavigationBarItem(
              //             title: Text(
              //               'COACH',
              //               style: TextStyle(
              //                 fontSize: 15.0,
              //                 color: Colors.blue,
              //               ),
              //             ),
              //             icon: ImageIcon(
              //               AssetImage('assets/coach.png'),
              //               color: Colors.indigo[300],
              //               size: 40.0,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // )
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
