import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nahal_it/Screens/cart.dart';
import 'package:nahal_it/main_drawer.dart';

class MyAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return  Directionality(
      textDirection: TextDirection.ltr,
      child: Expanded(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(size.width*0.01),
              padding: EdgeInsets.only(right :size.width*0.1 ),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Row(
                          children: [
                            IconButton(icon:Icon(Icons.favorite_outline_sharp) , color: Color(0xff2e5c66),
                            iconSize: size.width*0.09, onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Card_Screen()),
                                );

                              },)
                          ],
                        ),
                    ),
                    Container(
                      width: size.width*.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),

                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          cursorColor: Colors.lightGreen,
                          decoration:
                          InputDecoration(
                              // border: InputBorder.none,
                              hintText: 'جست و جو',
                              hintStyle: TextStyle(color: Color(0xff2e5c66),),
                              prefixIcon: Icon(
                                Icons.search,
                                color:Color(0xff2e5c66),
                              size: size.width*0.08,)
                        ),
                    ),
                      ),
                    ),
                    Container(
                    width: size.width*0.20,
                     child: Image(image: AssetImage("lib/images/Logo.png"), ))



                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
