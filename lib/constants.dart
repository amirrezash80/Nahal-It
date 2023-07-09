import 'package:flutter/material.dart';

class text_style extends StatelessWidget {
  final String title;

  const text_style({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Text(
      title,
      style: TextStyle(
          fontSize: size.width * 0.05,
          fontWeight: FontWeight.bold,
          color: Colors.green.shade800),
    );
  }
}

class image_style extends StatelessWidget {
  final String imageUrl;

  const image_style({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Image.network(
      imageUrl,
      width: size.width * 0.5,
      height: size.width * 0.5,
    );
  }
}


