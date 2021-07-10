import 'package:flutter/material.dart';
import 'drawer.dart';

class GymMembership extends StatefulWidget {
  @override
  _GymMembershipState createState() => _GymMembershipState();
}

class _GymMembershipState extends State<GymMembership> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gym Membership'),
        backgroundColor: Colors.cyan,
      ),
      // drawer: MyDrawer(),
      body: Center(
        child: Text(
          "Your Gym Membership",
        ),
      ),
    );
  }
}
