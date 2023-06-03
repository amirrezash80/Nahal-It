import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nahal_it/Screens/blog_screen.dart';
import 'package:nahal_it/Screens/cart_screen.dart';
import 'package:nahal_it/Screens/categories_screen.dart';
import 'package:nahal_it/Screens/profile_screen.dart';
import 'package:nahal_it/Screens/signup_screen.dart';

import 'magazine_screen.dart';

class GoogleNavBar extends StatefulWidget {

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {

  int? _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 2; // set the first tab as selected
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: GNav(
            rippleColor: Colors.green.shade800,
            hoverColor: Colors.green.shade700,
            haptic: true,
            tabBorderRadius: 15,
            tabActiveBorder: Border.all(color: Colors.green, width: 1),
            curve: Curves.easeOutExpo,
            duration: Duration(milliseconds: 300),
            gap: size.width*0.001,
            color: Color(0xff2e5c66),
            activeColor: Colors.green.shade800,
            iconSize: 24,
            tabBackgroundColor: Colors.greenAccent.withOpacity(0.2),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            tabs: [
              GButton(
                icon: Icons.shopping_cart_outlined ,
                text: 'سبد خرید',
                onPressed: (){
                  setState(() {
                    _selectedIndex = 0;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart_Screen()),
                    );
                  });
                },
              ),
              GButton(
                icon: Icons.receipt_long_rounded,
                text: 'مقالات',
                onPressed: (){
                  setState(() {
                    _selectedIndex = 1;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BlogScreen()),
                    );
                  });
                },
              ),
              GButton(
                icon: Icons.menu,
                text: 'دسته‌بندی‌ها',
                onPressed: (){
                  setState(() {
                    _selectedIndex = 2;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Categories_Screen()),
                    );
                  });
                },
              ),
              GButton(
                icon: Icons.person_2_outlined,
                text: 'پروفایل',
                onPressed: (){
                  setState(() {
                    _selectedIndex = 3;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile_screen()),
                    );
                  });
                },
              )
            ],
            // selectedIndex: _selectedIndex,
          ),
        ),
      ),
    );
  }
}
