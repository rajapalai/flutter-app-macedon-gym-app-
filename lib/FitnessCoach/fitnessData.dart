import 'package:flutter/material.dart';

List menus = ["Filter", "Basic", "Standard", "Premium"];

List package = ['SINGLE', 'GROUP', 'PACKAGES'];
List date1 = [
  '14:45 - 15:45',
  '16:00 - 17:00',
];
List date2 = [
  '17:15 - 18:15',
  '18:30 - 19:30',
];
List date3 = [
  '19:45 - 20:45',
  '21:00 - 22:00',
];
List date4 = ['22:15 - 23:15'];

List items = [
  {
    "id": 1,
    "name": "K Ravi Kumar",
    "details": "Certified Professional Trainer",
    "designation": "Weightlifter / Fitness Coach",
    "address":
        "K Ravi Kumar is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "SSH081686",
    "img": "assets/ravikumar.jpg",
    "p_price": 599.00,
    "p_promotion_price": 299.00
  },
  {
    "id": 2,
    "name": "Geeta Phogat",
    "details": "Certified Professional Trainer",
    "designation": "Boxer / Fitness Coach",
    "address":
        "Geeta Phogat is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "SSH023912",
    "img": "assets/gitapoghat.jpg",
    "p_price": 120.00,
    "p_promotion_price": 40.00
  },
  {
    "id": 3,
    "name": "Marry Kom",
    "details": "Certified Professional Trainer",
    "designation": "Freestyle Wrestler",
    "address":
        "Marry Kom is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "PC985170",
    "img": "assets/merrykom.jpg",
    "p_price": 130.00,
    "p_promotion_price": 30.00
  },
  {
    "id": 4,
    "name": "Vijendar",
    "details": "Certified Professional Trainer",
    "designation": "Boxer / Fitness Coach",
    "address":
        "Vijendar is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "PC980394",
    "img": "assets/vijendar.jpg",
    "p_price": 200.00,
    "p_promotion_price": 20.00
  },
  {
    "id": 5,
    "name": "K Ravi Kumar",
    "details": "Certified Professional Trainer",
    "designation": "Weightlifter / Fitness Coach",
    "address":
        "K Ravi Kumar is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "SSH081686",
    "img": "assets/ravikumar.jpg",
    "p_price": 599.00,
    "p_promotion_price": 299.00
  },
  {
    "id": 6,
    "name": "Geeta Phogat",
    "details": "Certified Professional Trainer",
    "designation": "Boxer / Fitness Coach",
    "address":
        "Geeta Phogat is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "SSH023912",
    "img": "assets/gitapoghat.jpg",
    "p_price": 120.00,
    "p_promotion_price": 40.00
  },
  {
    "id": 7,
    "name": "Marry Kom",
    "details": "Certified Professional Trainer",
    "designation": "Freestyle Wrestler",
    "address":
        "Marry Kom is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "PC985170",
    "img": "assets/merrykom.jpg",
    "p_price": 130.00,
    "p_promotion_price": 30.00
  },
  {
    "id": 8,
    "name": "Vijendar",
    "details": "Certified Professional Trainer",
    "designation": "Boxer / Fitness Coach",
    "address":
        "Vijendar is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "PC980394",
    "img": "assets/vijendar.jpg",
    "p_price": 200.00,
    "p_promotion_price": 20.00
  },
  {
    "id": 9,
    "name": "K Ravi Kumar",
    "details": "Certified Professional Trainer",
    "designation": "Weightlifter / Fitness Coach",
    "address":
        "K Ravi Kumar is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "SSH081686",
    "img": "assets/ravikumar.jpg",
    "p_price": 599.00,
    "p_promotion_price": 299.00
  },
  {
    "id": 10,
    "name": "Geeta Phogat",
    "details": "Certified Professional Trainer",
    "designation": "Boxer / Fitness Coach",
    "address":
        "Geeta Phogat is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "SSH023912",
    "img": "assets/gitapoghat.jpg",
    "p_price": 120.00,
    "p_promotion_price": 40.00
  },
  {
    "id": 11,
    "name": "Marry Kom",
    "details": "Certified Professional Trainer",
    "designation": "Freestyle Wrestler",
    "address":
        "Marry Kom is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "PC985170",
    "img": "assets/merrykom.jpg",
    "p_price": 130.00,
    "p_promotion_price": 30.00
  },
  {
    "id": 12,
    "name": "Vijendar",
    "details": "Certified Professional Trainer",
    "designation": "Boxer / Fitness Coach",
    "address":
        "Vijendar is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    "code": "PC980394",
    "img": "assets/vijendar.jpg",
    "p_price": 200.00,
    "p_promotion_price": 20.00
  },
];
List colors = [
  Colors.redAccent,
  Colors.greenAccent,
  Colors.cyanAccent,
  Colors.orangeAccent,
  Colors.purpleAccent,
  Colors.blueAccent
];
