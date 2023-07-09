import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'Products.dart';
import 'Screens/logo_screen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cartController = Get.put(CartController());
  final inedxController = Get.put(NavigationController());
  await Supabase.initialize(
      url: "https://forkbdelcxmfvvpocxjr.supabase.co",
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZvcmtiZGVsY3htZnZ2cG9jeGpyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODI5NDA0MTEsImV4cCI6MTk5ODUxNjQxMX0.t-gl6lFjcxE_iv8jAj54SvzviAXoUVicuYRp1rxXDlE");
  final supabase = Supabase.instance.client;

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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: PersianFonts.vazirTextTheme,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
      home: LogoPage(),
    );
  }
}
