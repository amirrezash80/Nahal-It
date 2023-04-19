import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nahal_it/Screens/cart.dart';
import 'package:nahal_it/Screens/profile_screen.dart';

class GoogleNavBar extends StatefulWidget {

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  int _selectedIndex = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
       color: Colors.white,
      //  color: Color(0xffe7e3dc),
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
          child:GNav(
              rippleColor: Colors.green.shade800, // tab button ripple color when pressed
              hoverColor: Colors.green.shade700, // tab button hover color
              haptic: true, // haptic feedback
              tabBorderRadius: 15,
              tabActiveBorder: Border.all(color: Colors.green, width: 1), // tab button border
              //  tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
              // tabShadow: [BoxShadow(color: Colors.green.withOpacity(0.25), blurRadius: 7)], // tab button shadow
              curve: Curves.easeOutExpo, // tab animation curves
              duration: Duration(milliseconds: 300), // tab animation duration
              gap: size.width*0.001, // the tab button gap between icon and text
              color: Color(0xff2e5c66), // unselected icon color
              activeColor: Colors.green.shade800, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: Colors.greenAccent.withOpacity(0.2), // selected tab background color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8), // navigation bar padding
              tabs: [
                GButton(
                  icon: Icons.shopping_cart_outlined ,
                  text: 'سبد خرید',
                ),
                GButton(
                  icon: Icons.receipt_long_rounded,
                  text: 'مقالات',
                  onPressed: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Card_Screen()),
                      );
                    });
                  },
                ),

                GButton(
                  icon: Icons.menu,
                  text: 'دسته‌بندی‌ها‌',
                ),
                GButton(
                  icon: Icons.person_2_outlined,
                  text: 'پروفایل',
                  onPressed: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Profile_screen()),
                      );
                    });
                  },

                )
              ]
          )
        ),
      ),
    );
  }
}
