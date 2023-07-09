import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:nahal_it/app_bar.dart';
import 'package:nahal_it/bottomNavigationBar.dart';
import '../banner_images.dart';
import '../carousel_slider.dart';
import '../main_drawer.dart';
import 'google_navbar.dart';
import 'package:persian_fonts/persian_fonts.dart';

class Home_Screen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final String title;
  final String username;

  Home_Screen({super.key, required this.title, required this.username});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer: Drawer(
            child: Container(
                color: Colors.white54,
                child: MainDrawer(
                  username: username,
                )),
          ),
          appBar: AppBar(
            //backgroundColor: Color(0xff293525),
            iconTheme: IconThemeData(
                color: Colors.green.shade900, size: size.width * 0.06),
            backgroundColor: Colors.white,
            actions: <Widget>[
              MyAppBar(),
            ],
          ),
          body: Container(
            width: size.width,
            height: size.height,
            color: Color(0xffe7e3dc).withOpacity(0.4),
            //  color: Color(0xffe1dacd),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //color: Color(0xff507089),
                    // color: Colors.teal.shade800,
                    color: Color(0xff2e5c66),
                    //color: Color(0xff3d7599),
                    padding: EdgeInsets.only(top: size.height * 0.022),
                    child: BannerCarousel(
                      borderRadius: 20,
                      height: size.height * 0.3,
                      width: size.width,
                      banners: BannerImages.listBanners,
                      onTap: (id) => print(id),
                      animation: true,
                    ),
                  ),
                  Container(
                    height: size.height * 0.015,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: size.width,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                          top: 20, right: 10, left: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Container(
                          //   decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.green.shade900,
                          //     ),
                          //     borderRadius: BorderRadius.circular(7)
                          //     ),
                          //   child:TextButton(
                          //     onPressed: null,
                          //     child: Text("مشاهده همه " , style: TextStyle(
                          //       fontSize: size.width*0.03,
                          //       color: Colors.black
                          //     ),),
                          //   ),
                          // ),
                          Row(
                            children: [
                              Text(" قالب های ویژه ",
                                  style: PersianFonts.Shabnam.copyWith(
                                      color: Color(0xff2e5c66),
                                      // color : Colors.green.shade900,
                                      //// color : Colors.black,
                                      fontSize: size.width * 0.05,
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.star,
                                color: Colors.green.shade800,
                                size: size.width * 0.08,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.green.shade900,
                  ),
                  Stack(
                    children: [
                      Container(
                        //  padding: EdgeInsets.only(top: 5),
                        // color: Colors.greenAccent.withOpacity(0.1),
                        height: size.height * 0.3,
                        width: size.width,
                        child: CarouselWithIndicatorDemo(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Convex()),
    );
  }
}
