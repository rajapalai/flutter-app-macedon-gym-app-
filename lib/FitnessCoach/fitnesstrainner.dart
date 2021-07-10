import 'package:flutter/material.dart';
import 'package:macedon_app/dashboard.dart';

class FitnessTrainner extends StatefulWidget {
  @override
  _FitnessTrainnerState createState() => _FitnessTrainnerState();
}

class _FitnessTrainnerState extends State<FitnessTrainner> {
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
                      'assets/reserve.png',
                      height: 50.0,
                      width: 50.0,
                      color: Colors.cyan,
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
                'For Selecting Fitness Trainer',
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
