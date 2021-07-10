import 'package:flutter/material.dart';

List menus = ["Filter", "All Proteins", "Whey Proteins", "Begginer's Protein"];

List items = [
  {
    "id": 1,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH081686",
    "img": "assets/pro1.png",
    "p_price": 5000.00,
    "p_promotion_price": 3495.00,
    "finalprice": 3495.00,
    "member_price": 2313.00
  },
  {
    "id": 2,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH023912",
    "img": "assets/pro02.png",
    "p_price": 5454.00,
    "p_promotion_price": 3435.00,
    "member_price": 3000.00
  },
  {
    "id": 3,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC985170",
    "img": "assets/pro3.png",
    "p_price": 6453.00,
    "p_promotion_price": 5553.00,
    "member_price": 4000.00
  },
  {
    "id": 4,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC980394",
    "img": "assets/pro4.png",
    "p_price": 8254.00,
    "p_promotion_price": 7353.00,
    "member_price": 5000.00
  },
  {
    "id": 5,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC932721",
    "img": "assets/pro5.png",
    "p_price": 7543.00,
    "p_promotion_price": 5355.00,
    "member_price": 4465.00
  },
  {
    "id": 6,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC900005",
    "img": "assets/pro9.png",
    "p_price": 6332.00,
    "p_promotion_price": 3945.00,
    "member_price": 3645.00
  },
  {
    "id": 7,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH081686",
    "img": "assets/pro1.png",
    "p_price": 5000.00,
    "p_promotion_price": 3495.00,
    "finalprice": 3495.00,
    "member_price": 2313.00
  },
  {
    "id": 8,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH023912",
    "img": "assets/pro02.png",
    "p_price": 5454.00,
    "p_promotion_price": 3435.00,
    "member_price": 3000.00
  },
  {
    "id": 9,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC985170",
    "img": "assets/pro3.png",
    "p_price": 6453.00,
    "p_promotion_price": 5553.00,
    "member_price": 4000.00
  },
  {
    "id": 10,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC980394",
    "img": "assets/pro4.png",
    "p_price": 8254.00,
    "p_promotion_price": 7353.00,
    "member_price": 5000.00
  },
  {
    "id": 11,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC932721",
    "img": "assets/pro5.png",
    "p_price": 7543.00,
    "p_promotion_price": 5355.00,
    "member_price": 4465.00
  },
  {
    "id": 12,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC900005",
    "img": "assets/pro9.png",
    "p_price": 6332.00,
    "p_promotion_price": 3945.00,
    "member_price": 3645.00
  },
  {
    "id": 13,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH081686",
    "img": "assets/pro1.png",
    "p_price": 5000.00,
    "p_promotion_price": 3495.00,
    "finalprice": 3495.00,
    "member_price": 2313.00
  },
  {
    "id": 14,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH023912",
    "img": "assets/pro02.png",
    "p_price": 5454.00,
    "p_promotion_price": 3435.00,
    "member_price": 3000.00
  },
  {
    "id": 15,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC985170",
    "img": "assets/pro3.png",
    "p_price": 6453.00,
    "p_promotion_price": 5553.00,
    "member_price": 4000.00
  },
  {
    "id": 16,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC980394",
    "img": "assets/pro4.png",
    "p_price": 8254.00,
    "p_promotion_price": 7353.00,
    "member_price": 5000.00
  },
  {
    "id": 17,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC932721",
    "img": "assets/pro5.png",
    "p_price": 7543.00,
    "p_promotion_price": 5355.00,
    "member_price": 4465.00
  },
  {
    "id": 18,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC900005",
    "img": "assets/pro9.png",
    "p_price": 6332.00,
    "p_promotion_price": 3945.00,
    "member_price": 3645.00
  },
  {
    "id": 19,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH081686",
    "img": "assets/pro1.png",
    "p_price": 5000.00,
    "p_promotion_price": 3495.00,
    "finalprice": 3495.00,
    "member_price": 2313.00
  },
  {
    "id": 20,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH023912",
    "img": "assets/pro02.png",
    "p_price": 5454.00,
    "p_promotion_price": 3435.00,
    "member_price": 3000.00
  },
  {
    "id": 21,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC985170",
    "img": "assets/pro3.png",
    "p_price": 6453.00,
    "p_promotion_price": 5553.00,
    "member_price": 4000.00
  },
  {
    "id": 22,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC980394",
    "img": "assets/pro4.png",
    "p_price": 8254.00,
    "p_promotion_price": 7353.00,
    "member_price": 5000.00
  },
  {
    "id": 23,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC932721",
    "img": "assets/pro5.png",
    "p_price": 7543.00,
    "p_promotion_price": 5355.00,
    "member_price": 4465.00
  },
  {
    "id": 24,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC900005",
    "img": "assets/pro9.png",
    "p_price": 6332.00,
    "p_promotion_price": 3945.00,
    "member_price": 3645.00
  },
  {
    "id": 25,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH081686",
    "img": "assets/pro1.png",
    "p_price": 5000.00,
    "p_promotion_price": 3495.00,
    "finalprice": 3495.00,
    "member_price": 2313.00
  },
  {
    "id": 26,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "SSH023912",
    "img": "assets/pro02.png",
    "p_price": 5454.00,
    "p_promotion_price": 3435.00,
    "member_price": 3000.00
  },
  {
    "id": 27,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC985170",
    "img": "assets/pro3.png",
    "p_price": 6453.00,
    "p_promotion_price": 5553.00,
    "member_price": 4000.00
  },
  {
    "id": 28,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC980394",
    "img": "assets/pro4.png",
    "p_price": 8254.00,
    "p_promotion_price": 7353.00,
    "member_price": 5000.00
  },
  {
    "id": 29,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC932721",
    "img": "assets/pro5.png",
    "p_price": 7543.00,
    "p_promotion_price": 5355.00,
    "member_price": 4465.00
  },
  {
    "id": 30,
    "name": "MuscleBlaze Biozyme Whey Isolate, 4.4 lb Rich Milk",
    "code": "PC900005",
    "img": "assets/pro9.png",
    "p_price": 6332.00,
    "p_promotion_price": 3945.00,
    "member_price": 3645.00
  }
];

List colors = [
  Colors.redAccent,
  Colors.greenAccent,
  Colors.cyanAccent,
  Colors.orangeAccent,
  Colors.purpleAccent,
  Colors.blueAccent
];
