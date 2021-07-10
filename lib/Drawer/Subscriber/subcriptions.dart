import 'package:flutter/material.dart';
import 'package:macedon_app/dashboard.dart';

class Subcriptions extends StatefulWidget {
  final int id;
  final String price;
  final String color1;
  final String color2;
  final String color3;
  final String button;
  final String ping;
  final String card;

  Subcriptions(
      {this.id,
      this.price,
      this.button,
      this.card,
      this.color1,
      this.ping,
      this.color2,
      this.color3});
  @override
  _SubcriptionsState createState() => _SubcriptionsState();
}

class _SubcriptionsState extends State<Subcriptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      // drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    // border: Border.all(width: 2),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/subsc.png',
                      height: 50.0,
                      width: 50.0,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Thank You',
                  style: getCustomFontStyle(),
                ),
              ),
              Text(
                'For Subscribing Us',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashboardScreen()),
                    );
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 70.0),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'BACK TO HOME',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              )
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   child: Text('BACK TO HOME'),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle getCustomFontStyle() {
    return const TextStyle(
      color: Colors.black,
      fontFamily: 'GreatVibes',
      fontSize: 50,
    );
  }
}
