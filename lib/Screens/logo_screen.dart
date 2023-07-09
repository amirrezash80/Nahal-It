import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nahal_it/Screens/Home_Screen.dart';
import 'package:nahal_it/Screens/login_screen.dart';

class LogoPage extends StatefulWidget {
  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.lightGreen,
          ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              side: BorderSide(
                color: Colors.transparent,
              ),
            ),
            onPressed: () {
             Get.offAll(Home_Screen(title: "نهال آی تی", username: "username"));
            },
            child: Container(
              // height:size.height*0.4,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("lib/images/Logo.png"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
