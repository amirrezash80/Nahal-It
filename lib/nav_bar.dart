import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mysize = MediaQuery.of(context).size;
    return Wrap(
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            //canvasColor: Colors.green,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.red,
            textTheme: Theme.of(context).textTheme.copyWith(
                  caption: new TextStyle(color: Colors.white),
                ),
          ), // sets the inactive color of the `BottomNavigationBar`
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.green,
            selectedIconTheme:
                IconThemeData(color: Colors.green, size: mysize.width * 0.09),
            // backgroundColor: Color(0xff293525),
            backgroundColor: Colors.white70,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: Color(0xff2e5c66),
                  ),
                  label: 'پروفایل',
                  activeIcon: Icon(
                    Icons.person,
                    color: Colors.green,
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    color: Color(0xff2e5c66),
                  ),
                  label: 'همه دسته بندی ها',
                  activeIcon: Icon(
                    Icons.menu,
                    color: Colors.green,
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xff2e5c66),
                  ),
                  label: 'سبد خرید',
                  activeIcon: Icon(
                    Icons.shopping_cart,
                    color: Colors.green,
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.receipt_long_rounded,
                    color: Color(0xff2e5c66),
                  ),
                  label: 'مجلات و مقالات',
                  activeIcon: Icon(
                    Icons.receipt_long,
                    color: Colors.green,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
