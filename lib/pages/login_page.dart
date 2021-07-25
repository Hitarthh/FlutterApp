import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {});
      changeButton = true;
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homePage);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png"),
                SizedBox(height: 40),
                Text("Welcome $name",
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter your Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password should contain more than 6 characters";
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueAccent,
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButton ? 50 : 150,
                      // color: Colors.blueAccent,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done_outline_rounded,
                              color: Colors.white)
                          : Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   style: TextButton.styleFrom(
                //       fixedSize: Size(150, 50),
                //       shadowColor: Colors.blueAccent,
                //       textStyle:
                //           TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homePage);
                //   },
                //   child: Text("Login"),
                // )
              ],
            ),
          ),
        ));
  }
}
