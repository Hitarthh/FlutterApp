import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: GoogleFonts.aBeeZee().fontFamily,
        ),
        initialRoute: "/LoginPage",
        routes: {
          "/": (context) => HomePage(),
          "/LoginPage": (context) => LoginPage(),
          "/HomePage": (context) => HomePage(),
        });
  }
}
