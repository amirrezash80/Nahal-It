import 'package:flutter/material.dart';

class SignUpCards extends StatefulWidget {

  final String text;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const SignUpCards({ required this.text, required this.icon, required this.onChanged});

  @override
  State<SignUpCards> createState() => _SignUpCardsState();
}

class _SignUpCardsState extends State<SignUpCards> {
  late String value;

  @override
  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            width: size.width*0.9,
            child: Text(widget.text , textAlign: TextAlign.end,),),
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
              onChanged: (newText) {
                value = newText;
                widget.onChanged(value);
                },

              decoration: InputDecoration(
            icon: Icon(widget.icon, color: Colors.green,),
            border: InputBorder.none,
            hintText: widget.text,
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
