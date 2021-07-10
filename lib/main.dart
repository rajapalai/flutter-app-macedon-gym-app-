import 'package:flutter/material.dart';
import 'package:macedon_app/ExploreMore/explorePage.dart';
import 'package:macedon_app/dashboard.dart';
import 'package:macedon_app/demo1/demohome.dart';
import 'package:macedon_app/login.dart';
import 'package:macedon_app/profile.dart';
import 'package:provider/provider.dart';

import 'Dietician/dietician.dart';
import 'Drawer/Loyality/loyality.dart';
import 'Drawer/Subscriber/plans.dart';
import 'Drawer/Subscriber/subcriptions.dart';
import 'ShopPage/orderHistory.dart';
import 'Fitness Center/fitnessHome.dart';
import 'FitnessCoach/fitnessHomePage.dart';
import 'Help/helpcenter.dart';
import 'ShopPage/shopHomePage.dart';
import 'demo1/bookmarkmodel.dart';
import 'splash.dart';
import 'geo.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (context) => BookmarkBloc(), child: MyApp()));

class MyApp extends StatelessWidget {
  static String title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GYMAPP',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        // scaffoldBackgroundColor: const Color(0xFFB2DFDB),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
