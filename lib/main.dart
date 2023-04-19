import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/Home_Screen.dart';
import 'package:flutter/services.dart';

import 'Screens/logo_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LogoPage(),

    );
  }
}

