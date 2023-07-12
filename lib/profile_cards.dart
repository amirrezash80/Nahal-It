import 'package:flutter/material.dart';

class Profile_Cards extends StatelessWidget {
  final String text;
  final String value;
  final VoidCallback onTap;

  const Profile_Cards({
    required this.text,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * 0.07,
          child: OutlinedButton(
            onPressed: onTap,
            style: OutlinedButton.styleFrom(
              side: BorderSide.none,
            ),
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
                Text(
                  value,
                  style: TextStyle(color: Colors.grey),
                ),
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
