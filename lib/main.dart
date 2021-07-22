import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';


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
        initialRoute: "/",
        routes: {
          "/": (context) => LoginPage(),
          "/login": (context) => LoginPage(),
          "/home": (context) => HomePage(),
        });
  }
}
