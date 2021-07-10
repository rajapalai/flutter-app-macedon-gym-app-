import 'package:flutter/material.dart';
import 'package:macedon_app/dashboard.dart';
import 'package:macedon_app/profile.dart';
import '../login.dart';
import 'Subscriber/plans.dart';
import 'Subscriber/subcriptions.dart';

import '../ShopPage/orderHistory.dart';
import 'activity&Records.dart';
import 'completedSession.dart';
import 'gymMembership.dart';
import './Loyality/loyality.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // padding: EdgeInsets.only(top: 50.0, left: 40.0),
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 100.0, left: 10.0)),
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/user.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Amarjeet Palai",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
                // thickness: 5.0,
                ),
            // ListTile(
            //   leading: Icon(
            //     Icons.home,
            //     color: Colors.black,
            //   ),
            //   title: Text(
            //     'Home',
            //     style: TextStyle(
            //       color: Colors.cyan,
            //     ),
            //   ),
            //   onTap: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => DashboardScreen()));
            //   },
            //   // enabled: false,
            //   selected: true,
            // ),
            // Divider(),
            // ListTile(
            //   leading: Icon(
            //     Icons.account_circle_rounded,
            //     color: Colors.black,
            //   ),
            //   title: Text(
            //     'Profile',
            //     style: TextStyle(
            //       color: Colors.cyan,
            //     ),
            //   ),
            //   onTap: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => ProfileDash()));
            //   },
            //   // enabled: false,
            //   selected: true,
            // ),
            // Divider(),
            ListTile(
              leading: Icon(
                Icons.add_shopping_cart_rounded,
                color: Colors.black,
              ),
              title: Text(
                'Items Order',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => OrderHistory()));
              },
              // enabled: false,
              selected: true,
            ),
            // Divider(),
            ListTile(
              leading: Icon(
                Icons.subscriptions,
                color: Colors.black,
              ),
              title: Text(
                'Subcriptions',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SubscribingPlan()));
              },
              // enabled: false,
              selected: true,
            ),
            // Divider(),
            ListTile(
              leading: Icon(
                Icons.event_note,
                color: Colors.black,
              ),
              title: Text(
                'Activity & Records',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ActivityRecords()));
              },
              // enabled: false,
              selected: true,
            ),
            // Divider(),
            ListTile(
              leading: Icon(
                Icons.alarm_add_rounded,
                color: Colors.black,
              ),
              title: Text(
                'Completed Session',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CompletedSession()));
              },
              // enabled: false,
              selected: true,
            ),
            // Divider(),
            ListTile(
              leading: Icon(
                Icons.assignment_ind_outlined,
                color: Colors.black,
              ),
              title: Text(
                'Gym Membership',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GymMembership()));
              },
              // enabled: false,
              selected: true,
            ),
            // Divider(),
            ListTile(
              leading: Icon(
                Icons.badge,
                color: Colors.black,
              ),
              title: Text(
                'Loyality',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoyalityPoint()));
              },
              // enabled: false,
              selected: true,
            ),
            // Divider(),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Signup()));
              },
              // enabled: false,
              selected: true,
            ),
            // Divider(),
            // Expanded(
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: ListTile(
            //       leading: Icon(Icons.close),
            //       title: Text('Close'),
            //       onTap: () {
            //         Navigator.of(context).pop();
            //         Navigator.of(context)
            //         .push(MaterialPageRoute(builder: (context) => ItemsOrder()));
            //       },
            //       // enabled: false,
            //       selected: true,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
