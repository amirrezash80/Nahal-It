import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/Website_seo.dart';
import 'package:nahal_it/Screens/Website_template.dart';
import 'package:nahal_it/Screens/cart_screen.dart';
import 'package:nahal_it/Screens/news_screen.dart';
import 'package:nahal_it/Screens/profile_screen.dart';
import 'package:nahal_it/Screens/purchese_guide.dart';
import 'package:nahal_it/Screens/robots_screen.dart';
import 'package:nahal_it/Screens/seller_screen.dart';
import 'package:nahal_it/Screens/webasite_sale_screen.dart';
import 'package:nahal_it/Screens/website_design.dart';

import '../drawer_list.dart';
import '../gradient.dart';
import 'Contact_us.dart';
import 'about_nahal.dart';
import 'about_us.dart';
import 'blog_screen.dart';
import 'estekhdam.dart';
import 'login_screen.dart';

class Categories_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text("دسته بندی ها"),
      ),
      body: Stack(
        children: [
          MyGradient(),
          SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                child: Column(
                  children: [
                    ExpansionList(
                      icon:Icons.link,
                      title: " لینک های کمکی",
                      children: [
                        ListTile(
                          title: Text('ثبت سفارش'),
                          onTap: () {
                            // action on press
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> Purchase_guide()
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text('فروشنده باشید'),
                          onTap: () {
                            // action on press
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> SellerScreen()
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text('استخدام'),
                          onTap: () {
                            // action on press
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> Estekhdam()
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text('حساب کاربری من'),
                          onTap: () {
                            // action on press
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> Profile_screen()
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text('اخبار سایت نهال آی تی'),
                          onTap: () {
                            // action on press

                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=> NewsScreen()
                            ),
                            );

                          },
                        ),
                      ],
                    ),
                    ExpansionList(
                      icon:Icons.work,
                      title: " خدمات اداری",
                      children: [
                        ListTile(
                          title: Text('ایمیل مارکتینگ'),
                          onTap: () {
                            // action on press
                          },
                        ), ListTile(
                          title: Text('پیامک انبوه'),
                          onTap: () {
                            // action on press
                          },
                        ), ListTile(
                          title: Text('تولید محتوا'),
                          onTap: () {
                            // action on press
                          },
                        ), ListTile(
                          title: Text('ربات شبکه های اجتماعی'),
                          onTap: () {
                            // action on press
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> RobotsScreen()
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    ExpansionList(
                      icon:Icons.energy_savings_leaf,
                      title: " خدمات تیم نهال آی تی",
                      children: [
                        ListTile(
                          title: Text('فروش سایت اختصاصی و اقتصادی'),
                          onTap: () {
                            // action on press
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> Website_sales()
                              ),
                            );
                          },
                        ), ListTile(
                          title: Text('فروش قالب سایت'),
                          onTap: () {
                            // action on press
                            Navigator.push(context,
                                MaterialPageRoute(
                                builder: (context)=> Website_templates()
                            ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text('طراحی سایت اختصاصی'),
                          onTap: () {
                            // action on press
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> Website_design()
                              ),
                            );

                          },
                        ),
                        ListTile(
                          title: Text('خدمات وبسایت و سئو وب سایت'),
                          onTap: () {
                            // action on press
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> Website_seo()
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text('خدمات کسب و کار'),
                          onTap: () {
                            // action on press
                          },
                        ),
                        ListTile(
                          title: Text('خدمات شبکه های اجتماعی'),
                          onTap: () {
                            // action on press
                          },
                        ),
                        ListTile(
                          title: Text('خدمات موشن گرافیک'),
                          onTap: () {
                            // action on press
                          },
                        ),
                        ListTile(
                          title: Text('خدمات  گرافیک'),
                          onTap: () {
                            // action on press
                          },
                        ),
                        ListTile(
                          title: Text('تدوین پروپوزال و بیزنس پلن'),
                          onTap: () {
                            // action on press
                          },
                        ),
                        ListTile(
                          title: Text('خدمات اپلیکیشن موبایل'),
                          onTap: () {
                            // action on press
                          },
                        ),
                        ListTile(
                          title: Text('خدمات پریمیر و تدوین فیلم'),
                          onTap: () {
                            // action on press
                          },
                        ),
                        ListTile(
                          title: Text('خدمات تدوین صدا و صدا گذاری'),
                          onTap: () {
                            // action on press
                          },
                        ),
                      ],
                    ),
                  ],
                ),
    ),
            ),
          ),
        ],
      ),
    );
  }
}
