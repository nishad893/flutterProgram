import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterprogram/project1/homepage.dart';
import 'package:flutterprogram/project1/registration.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 150, right: 120),
              child: Text(
                "Login page",
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "username",
                    prefixIcon: Icon(Icons.person),
                    labelText: "username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
                validator: (username) {

                  if (username!.isEmpty ||
                      !username.contains("@") ||
                      username.contains(".")) {
                    return "enter a valid username";
                  }


                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 70, left: 70),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon: Icon(Icons.password),
                    labelText: "password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "incorrect password";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    maximumSize: Size(200, 60)),
                onPressed: () {
                  var valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  }
                },
                child: Text("login")),
            SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => registretion()));
                },
                child: Text("Not a user? Creat a n account")),
          ],
        ),
      ),
    ));
  }
}
