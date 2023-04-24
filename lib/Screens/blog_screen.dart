import 'package:flutter/material.dart';

class Blog_Screen extends StatelessWidget {
  const Blog_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("بلاگ"),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
