import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Screens/Store_page_screen.dart';
import 'package:nahal_it/Screens/favourite_screen.dart';

import 'Controller.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController searchController = TextEditingController();
    var textFilter = Get.find<SearchController>();

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Expanded(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(size.width * 0.01),
              padding: EdgeInsets.only(right: size.width * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.favorite_outline_sharp),
                          color: Color(0xff2e5c66),
                          iconSize: size.width * 0.09,
                          onPressed: () {
                            Get.to(Favourite_Screen());
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * .5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        controller: searchController,
                        cursorColor: Colors.lightGreen,
                        decoration: InputDecoration(
                            // border: InputBorder.none,
                            hintText: 'جست و جو',
                            hintStyle: TextStyle(
                              color: Color(0xff2e5c66),
                            ),
                            prefixIcon: GestureDetector(
                              onTap: () {
                                textFilter.isFilterd = true;
                                textFilter.textFilter = searchController.text;
                                Get.to(StorePage());
                              },
                              child: Icon(
                                Icons.search,
                                color: Color(0xff2e5c66),
                                size: size.width * 0.08,
                              ),
                            )),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.20,
                    child: Image(
                      image: AssetImage("lib/images/Logo.png"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
