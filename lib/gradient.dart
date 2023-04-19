import 'package:flutter/material.dart';

class MyGradient extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Colors.green.withOpacity(0.1),
                Colors.green.withOpacity(0.1),
                Colors.green.withOpacity(0.15),
                Colors.green.withOpacity(0.2),
                Colors.green.withOpacity(0.3),
                //  Colors.black
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter

          )
      ),
    );

  }
}
