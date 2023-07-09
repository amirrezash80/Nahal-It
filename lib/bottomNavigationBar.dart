import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:nahal_it/Screens/Home_Screen.dart';
import 'package:nahal_it/Screens/blog_screen.dart';
import 'package:nahal_it/Screens/cart_screen.dart';
import 'package:nahal_it/Screens/profile_screen.dart';
import 'Products.dart';
import 'Screens/categories_screen.dart';

class Convex extends StatelessWidget {
  final NavigationController navigationController = Get.find();

  void setScreen(int index, BuildContext context) {
    if (navigationController.selectedIndex.value == index) {
      return; // Return early if the same index is tapped
    }

    switch (index) {
      case 0:
        {
          Get.offAll(() => BlogScreen(), arguments: index);
        }
        break;
      case 1:
        {
          Get.offAll(() => Categories_Screen(), arguments: index);
        }
        break;
      case 2:
        {
          Get.offAll(
              () => Home_Screen(title: "نهال آی تی", username: "username"),
              arguments: index);
        }
        break;
      case 3:
        {
          Get.offAll(() => CartPage(), arguments: index);
        }
        break;
      case 4:
        {
          Get.offAll(() => Profile_screen(), arguments: index);
        }
        break;
    }
    navigationController.setIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Obx(
        () => ConvexAppBar(
          backgroundColor: Colors.white,
          color: Colors.black,
          gradient: LinearGradient(colors: [
            Colors.green.withOpacity(0.1),
            Colors.green.withOpacity(0.1),
            Colors.green.withOpacity(0.05),
            //  Colors.black
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          activeColor: Colors.blueGrey,
          items: [
            TabItem(icon: Icons.receipt_long_rounded, title: 'مقالات'),
            TabItem(icon: Icons.menu, title: '‌دسته‌بندی'),
            TabItem(icon: Icons.home, title: 'صفحه‌اصلی'),
            TabItem(icon: Icons.shopping_cart_outlined, title: 'سبد خرید'),
            TabItem(icon: Icons.person_2_outlined, title: 'پروفایل'),
          ],
          initialActiveIndex: navigationController.selectedIndex.value,
          onTap: (int i) {
            setScreen(i, context);
          },
        ),
      ),
    );
  }
}
