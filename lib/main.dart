import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'Screens/logo_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize
    (
      url: "https://forkbdelcxmfvvpocxjr.supabase.co",
      anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZvcmtiZGVsY3htZnZ2cG9jeGpyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODI5NDA0MTEsImV4cCI6MTk5ODUxNjQxMX0.t-gl6lFjcxE_iv8jAj54SvzviAXoUVicuYRp1rxXDlE");
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey),
        ),
),
      home:  LogoPage(),

    );
  }
}

