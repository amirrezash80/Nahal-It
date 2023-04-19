import 'package:flutter/material.dart';


class First_Horizontal_ListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return  Container(
        margin: EdgeInsets.only(left: 10 , right: 10 , top: 15),
        width: size.width,
        height: size.height*0.25,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image(
              fit: BoxFit.fill,
              image: NetworkImage("https://nahalit.com/wp-content/uploads/2022/11/3.jpg"),
              height: size.height,
              width: size.width,
            ),
            Container(
              width: size.width,
              height: size.height*0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new_outlined ,color: Colors.black,),
                  Icon(Icons.arrow_forward_ios_outlined , color: Colors.black,)
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: size.width*0.06,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  Container(width: size.width*0.06,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],

              ),
            )
          ],
        )
    );

  }
}
