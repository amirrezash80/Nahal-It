import 'package:flutter/material.dart';

class Products_Screen extends StatelessWidget {
  const Products_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("محصولات"),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
