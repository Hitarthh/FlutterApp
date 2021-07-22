import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var name = "Hitarth Sharma";
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("$name's First App"),
            ),
            drawer: Drawer(),
            body: Center(child: Text("This is my first Flutter App")
            )
            ),
            themeMode:ThemeMode.dark,
            darkTheme:ThemeData(brightness:Brightness.dark),
            theme:ThemeData(brightness: Brightness.light),
            
            );
  }
}
