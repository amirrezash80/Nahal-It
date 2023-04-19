import 'package:flutter/material.dart';

class Category {
  final String image;
  final String name;

  Category({required this.image, required this.name});
}


final List<Color> kMixedColors = [
  Colors.indigo,
  Colors.pinkAccent,
  Color(0xff71A5D7),
  Color(0xff72CCD4),

  // Color(0xffFBAB57),
  // Color(0xffF8B993),
  Colors.green,
  Colors.lime,
  Colors.indigo
  // Color(0xff962D17),
  // Color(0xffc657fb),
  // Color(0xfffb8457),
];

final List<Category> categories = [
  Category(image: "lib/images/html.jpeg", name: "قالب ابروان"),
  Category(image: "lib/images/nayan.jpeg", name: "قالب نایان"),
  Category(image: "lib/images/html.jpeg", name: "قالب ابروان"),
  Category(image: "lib/images/nayan.jpeg", name: "قالب نایان"),
];

