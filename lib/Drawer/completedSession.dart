import 'package:flutter/material.dart';
import 'drawer.dart';

class CompletedSession extends StatefulWidget {
  @override
  _CompletedSessionState createState() => _CompletedSessionState();
}

class _CompletedSessionState extends State<CompletedSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Completed Session'),
        backgroundColor: Colors.cyan,
      ),
      // drawer: MyDrawer(),
      body: Center(
        child: Text(
          "Your Completed Session",
        ),
      ),
    );
  }
}
