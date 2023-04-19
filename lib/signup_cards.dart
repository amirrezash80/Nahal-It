import 'package:flutter/material.dart';

class SignUpCards extends StatelessWidget {

  final String text;
  final IconData icon;

  const SignUpCards({ required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
            width: size.width*0.9,
            child: Text(text , textAlign: TextAlign.end,),),
        SizedBox(height: size.height*0.015,),
        Container(
        color: Colors.white,
        height: size.height*0.07,
        width: size.width*0.9,
        child: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Padding(
            padding:  EdgeInsets.only(right: size.width*0.02),
            child: TextField(
            decoration: InputDecoration(
            icon: Icon(icon, color: Colors.green,),
            border: InputBorder.none,
            hintText: text,
            ),
            ),
          ),
        ),
        ),
        ),
      ],
    );
  }
}
