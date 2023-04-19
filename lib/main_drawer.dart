
import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/profile_screen.dart';
import 'package:nahal_it/drawer_list.dart';
import 'package:nahal_it/gradient.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
                      padding: EdgeInsets.only(top:50.0,left: 20.0 ,right: 20.0),
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                        Image(image: AssetImage("lib/images/Logo.png"),
                        width: size.width*0.3,)
                        ],
                      ),

                    ),

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: size.height,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Drawer_list(icon: Icons.person  , text: " ورود و عضویت",subset: false,),
                        Drawer_list(icon:  Icons.home, text: "صفحه اصلی",subset: false),
                        ExpansionList(icon:Icons.shopping_bag_rounded, title: " محصولات",),
                        Drawer_list(icon:Icons.shopping_cart_checkout_rounded, text: "راهنمای خرید" , subset: false,),
                        Drawer_list(icon:Icons.receipt_long_rounded, text: "بلاگ",subset: false),
                        ExpansionList(icon:Icons.stacked_line_chart_rounded, title: "نمونه کار" ,),
                        ExpansionList(icon:Icons.energy_savings_leaf, title: "تیم نهال" ,),
                        Drawer_list(icon:Icons.work_sharp, text: "استخدام" , subset: false,),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
