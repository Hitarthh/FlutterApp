import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(),
      appBar: AppBar(
        title: Text("Hitter App"),
      ),
      body: Center(
        child: Text("First app with home_page file"),
      ),
    );
  }
}
