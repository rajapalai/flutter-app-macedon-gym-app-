import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:line_icons/line_icons.dart';
import 'package:macedon_app/bottombar/bottomBar.dart';
import 'package:macedon_app/constant.dart';
import 'package:rating_bar/rating_bar.dart';

class StudioGym extends StatefulWidget {
  final int id;
  final String name;
  final String details;
  final String designation;
  final String address;
  final String img;
  final String time1;
  final String time2;
  final String offers;
  final String aboutUs;
  final String reviews;
  final String rating;
  StudioGym(
      {this.id,
      this.name,
      this.details,
      this.designation,
      this.address,
      this.img,
      this.time1,
      this.time2,
      this.aboutUs,
      this.offers,
      this.rating,
      this.reviews});

  @override
  _StudioGymState createState() => _StudioGymState();
}

class _StudioGymState extends State<StudioGym> {
  int activeIndex = 0;
  String _singleValue = "Text alignment right";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      // bottomNavigationBar: BottomBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Hero(
            tag: widget.id.toString(),
            child: SizedBox(
                height: 250.0,
                width: 450.0,
                child: Carousel(
                  images: [
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                    ExactAssetImage(widget.img),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.black,
                  indicatorBgPadding: 5.0,
                  autoplay: false,
                  dotBgColor: Colors.blueGrey.withOpacity(0.5),
                  borderRadius: false,
                )),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10.0),
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: <Widget>[
                RatingBar.readOnly(
                  initialRating: 3.5,
                  isHalfAllowed: true,
                  size: 20.0,
                  filledColor: Colors.yellow,
                  halfFilledIcon: Icons.star_half,
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                ),
                Text(
                  widget.rating,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10.0),
            child: Text(
              'Timings',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10.0),
            child: Text(
              widget.time1.toString(),
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10.0),
            child: Text(
              widget.time2.toString(),
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Workouts Avaliable',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10.0),
            child: Text(
              widget.offers,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30.0),
            child: Row(
              children: <Widget>[
                Text(
                  'About Us',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10.0),
            child: Text(
              widget.aboutUs,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Address',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10.0),
            child: Text(
              widget.address,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 15.0,
      width: 15.0,
      decoration: new BoxDecoration(
        color: Colors.cyan,
        shape: BoxShape.circle,
      ),
    );
  }
}
