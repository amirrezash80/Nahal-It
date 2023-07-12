import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/Contact_us.dart';
import 'package:nahal_it/Screens/Home_Screen.dart';
import 'package:nahal_it/Screens/Store_page_screen.dart';
import 'package:nahal_it/Screens/about_nahal.dart';
import 'package:nahal_it/Screens/about_us.dart';
import 'package:nahal_it/Screens/blog_screen.dart';
import 'package:nahal_it/Screens/estekhdam.dart';
import 'package:nahal_it/Screens/login_screen.dart';
import 'package:nahal_it/Screens/purchese_guide.dart';
import 'package:nahal_it/drawer_list.dart';
import 'package:nahal_it/gradient.dart';
import 'Controller.dart';
import 'Screens/Product_Screen.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/Home_Screen.dart';
import 'package:nahal_it/Screens/login_screen.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final user username = Get.find<user>();
    bool isGuest = (username.username == 'guest');
    String buttonText = isGuest ? 'ورود و عضویت' : 'خروج از حساب';

    return Stack(
      children: [
        MyGradient(),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding:
                      EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image(
                            image: AssetImage("lib/images/Logo.png"),
                            width: size.width * 0.3,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Container(
                    height: size.height,
                    child: Wrap(
                      children: [
                        Drawer_list(
                          icon: Icons.person,
                          text: buttonText,
                          subset: false,
                          page: isGuest ? LoginPage() : null,
                          onPressed: () {
                            // Handle login/logout
                            if (isGuest) {
                              Get.to(LoginPage());
                            } else {
                              username.username = 'guest';
                              final AuthController authController = Get.find<AuthController>();
                              authController.signOut();
                              Get.offAll(() => Home_Screen());
                            }
                          },
                        ),
                        Drawer_list(
                          icon: Icons.home,
                          text: "صفحه اصلی",
                          subset: false,
                          page: Home_Screen(),
                          onPressed: () {
                            // Handle navigation to home screen
                            Get.to(Home_Screen());
                          },
                        ),
                        Drawer_list(
                          icon: Icons.shopping_bag_rounded,
                          text: "محصولات",
                          subset: false,
                          page: StorePage(),
                          onPressed: () {
                            // Handle navigation to store page
                            Get.to(StorePage());
                          },
                        ),
                        Drawer_list(
                          icon: Icons.shopping_cart_checkout_rounded,
                          text: "راهنمای خرید",
                          subset: false,
                          page: Purchase_guide(), onPressed: () {
                            Get.to(Purchase_guide());
                        },
                        ),
                        Drawer_list(
                          icon: Icons.receipt_long_rounded,
                          text: "بلاگ",
                          subset: false,
                          page: BlogScreen(), onPressed: () {
                            Get.to(BlogScreen());
                        },
                        ),
                        ExpansionList(
                          icon: Icons.stacked_line_chart_rounded,
                          title: "نمونه کار",
                          children: [
                            ListTile(
                              title: Text('نمونه کار گرافیک'),
                              onTap: () {
                                // action on press
                              },
                            ),
                            ListTile(
                              title: Text('نمونه کار پریمیر'),
                              onTap: () {
                                // action on press
                              },
                            ),
                            ListTile(
                              title: Text('نمونه کار طراحی سایت'),
                              onTap: () {
                                // action on press
                              },
                            ),
                            ListTile(
                              title: Text('نمونه کار اپلیکیشن'),
                              onTap: () {
                                // action on press
                              },
                            ),
                            ListTile(
                              title: Text('نمونه کار سئو'),
                              onTap: () {
                                // action on press
                              },
                            ),
                            ListTile(
                              title: Text('نمونه کار تدوین و صداگذاری'),
                              onTap: () {
                                // action on press
                              },
                            ),
                          ],
                        ),
                        ExpansionList(
                          icon: Icons.energy_savings_leaf,
                          title: "تیم نهال",
                          children: [
                            ListTile(
                              title: Text('تماس با ما'),
                              onTap: () {
                                // action on press
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ContactUs()),
                                );
                              },
                            ),
                            ListTile(
                              title: Text('درباره ما'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => About_Us()),
                                );
                              },
                            ),
                          ],
                        ),
                        Drawer_list(
                          icon: Icons.work_sharp,
                          text: "استخدام",
                          subset: false,
                          page: Estekhdam(), onPressed: () {
                            Get.to(Estekhdam());
                        },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
