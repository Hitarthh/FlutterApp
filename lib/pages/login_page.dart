import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png"),
              SizedBox(height: 40),
              Text("Welcome User",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Username",
                          labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    fixedSize: Size(150, 50),
                    shadowColor: Colors.blueAccent,
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Text("Login"),
              )
            ],
          ),
        ));
  }
}
