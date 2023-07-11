import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:nahal_it/Screens/Contact_us.dart';
import 'package:nahal_it/Screens/about_us.dart';
import 'package:nahal_it/Screens/login_screen.dart';

import 'Screens/profile_screen.dart';

class Drawer_list extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool subset;
  final Widget? page;
  final VoidCallback onPressed;

  const Drawer_list({
    Key? key,
    required this.icon,
    required this.text,
    required this.subset,
    required this.page,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        ListTile(
          visualDensity: VisualDensity(vertical: 4),
          onTap: onPressed,
          leading: Icon(
            icon,
            color: Color(0xff2e5c66),
            size: size.width * 0.08,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: size.width * 0.05),
              ),
              if (subset)
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black54,
                ),
            ],
          ),
        ),
        Container(
          color: Colors.green.shade100,
          width: size.width,
          height: 0.75,
        )
      ],
    );
  }
}


class ExpansionList extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const ExpansionList({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        ExpansionTile(
          title: Text(
            title,
            style: TextStyle(fontSize: size.width * 0.05),
          ),
          leading: Icon(
            icon,
            color: Color(0xff2e5c66),
            size: size.width * 0.08,
          ),
          childrenPadding: EdgeInsets.only(right: size.width * 0.03),
          children: children,
        ),
        Container(
          color: Colors.green.shade100,
          width: size.width,
          height: 0.75,
        )
      ],
    );
  }
}
