import 'package:flutter/material.dart';

class Estekhdam_Cards extends StatelessWidget {

  final String text;

  const Estekhdam_Cards({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;

    return Padding(

      padding:  EdgeInsets.all(size.height*0.02),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
               color:
               Colors.grey),
            borderRadius: BorderRadius.circular(10)//<-- SEE HERE
          ),
          hintText: text,
        ),
      ),
    );
  }
}
