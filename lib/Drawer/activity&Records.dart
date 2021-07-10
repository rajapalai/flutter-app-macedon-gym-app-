import 'package:flutter/material.dart';
import 'drawer.dart';

class ActivityRecords extends StatefulWidget {
  @override
  _ActivityRecordsState createState() => _ActivityRecordsState();
}

class _ActivityRecordsState extends State<ActivityRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Activity & Records'),
        backgroundColor: Colors.cyan,
      ),
      // drawer: MyDrawer(),
      body: Center(
        child: Text(
          "Your Activity Records",
        ),
      ),
    );
  }
}
