import 'package:flutter/material.dart';
import 'package:macedon_app/Help/helpcenter.dart';
import 'package:macedon_app/ShopPage/shopHomePage.dart';
import 'package:macedon_app/dashboard.dart';
import 'package:macedon_app/profile.dart';

import 'package:macedon_app/qr_code_scanner.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          title: Text(
            'Home',
            style: TextStyle(
              // fontSize: 15.0,
              color: Colors.blue,
            ),
          ),
          icon: IconButton(
            icon: Image.asset(
              "assets/home.png",
              height: 25.0,
              width: 25.0,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()));
            },
          ),
        ),
        BottomNavigationBarItem(
            title: Text(
              'SHOP',
              style: TextStyle(
                // fontSize: 15.0,
                color: Colors.blue,
              ),
            ),
            icon: IconButton(
              icon: Image.asset(
                "assets/d3.png",
                height: 25.0,
                width: 25.0,
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FitShopHomePage()));
              },
            )),
        BottomNavigationBarItem(
            title: Text(
              'SCAN',
              style: TextStyle(
                // fontSize: 15.0,
                color: Colors.blue,
              ),
            ),
            icon: IconButton(
                icon: Image.asset(
                  "assets/code.png",
                  height: 25.0,
                  width: 25.0,
                ),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QrScanner()));
                })),
        BottomNavigationBarItem(
          title: Text(
            'PROFILE',
            style: TextStyle(
              // fontSize: 15.0,
              color: Colors.blue,
            ),
          ),
          icon: IconButton(
              icon: Image.asset(
                "assets/user.png",
                height: 25.0,
                width: 25.0,
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileDash()));
              }),
        ),
        BottomNavigationBarItem(
          title: Text(
            'HELP',
            style: TextStyle(
              // fontSize: 15.0,
              color: Colors.blue,
            ),
          ),
          icon: IconButton(
            icon: Image.asset(
              "assets/support.png",
              height: 25.0,
              width: 25.0,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Helpcenter()));
            },
          ),
        ),
      ],
    );
  }
}
