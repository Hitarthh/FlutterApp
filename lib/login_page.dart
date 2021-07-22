import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            SizedBox(
              height: 5,
            ),
            Text("Welcome",
                style: TextStyle(color: Colors.blueAccent, fontSize: 25)),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter your UserName", labelText: "UserName"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Your Password", labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  print("Welcome User");
                })
          ],
        ));
  }
}
