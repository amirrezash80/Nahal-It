import 'package:flutter/material.dart';

import '../gradient.dart';

class SellerScreen extends StatelessWidget {
  const SellerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("فروشنده باشید"),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          MyGradient(),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: EdgeInsets.all(size.width * 0.03),
              child: Column(
                children: [
                  Text(
                    "در نهال آیتی فروشنده شوید :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.08),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "شما می توانید با عضویت در بخش فروشندگان سایت نهال آیتی شروع به کسب در آمد کنید .",
                    style: TextStyle(fontSize: size.width * 0.04),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
