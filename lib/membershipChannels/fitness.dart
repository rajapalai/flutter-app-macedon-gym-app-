import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../profile.dart';

class Fitness extends StatefulWidget {
  @override
  _FitnessState createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  static const IconData location_on =
      IconData(0xe840, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/c4.png',
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
                                  builder: (context) => ProfileDash(),
                                ),
                              );
                            },
                          ),
                          Text(
                            'Fitness ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            'assets/bell.png',
                            width: 30.0,
                            height: 30.0,
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
                      Text("FITNESS",
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
              Column(
                children: [
                  Container(
                    child: BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,

                      // selectedItemColor: Colors.white,
                      // unselectedItemColor: Colors.white.withOpacity(.60),
                      // selectedFontSize: 14,
                      // unselectedFontSize: 14,
                      // onTap: (value) {
                      //   // Respond to item press.
                      // },
                      items: [
                        BottomNavigationBarItem(
                          title: Text(
                            'STUDIO',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.blue,
                            ),
                          ),
                          icon: ImageIcon(
                            AssetImage('assets/e1.png'),
                            color: Colors.indigo[700],
                            size: 40.0,
                          ),
                        ),
                        BottomNavigationBarItem(
                          title: Text(
                            'MACEDON CASH',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.blue,
                            ),
                          ),
                          icon: ImageIcon(
                            AssetImage('assets/e2.png'),
                            color: Colors.purple[700],
                            size: 40.0,
                          ),
                        ),
                        BottomNavigationBarItem(
                          title: Text(
                            'MORE',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.blue,
                            ),
                          ),
                          icon: ImageIcon(
                            AssetImage('assets/e3.png'),
                            color: Colors.blue,
                            size: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
