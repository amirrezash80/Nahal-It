import 'package:flutter/material.dart';

class Profile_Cards extends StatelessWidget {

  final String text;

  const Profile_Cards({ required this.text});

  @override
  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height*0.07,
          child: OutlinedButton(
        onPressed: null,
            style: OutlinedButton.styleFrom(
              side: BorderSide.none,
            ),
            child: Row(
              children: [
                Text(text,
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey.shade400,
          height: 1,
        )
      ],
    );
  }
}
