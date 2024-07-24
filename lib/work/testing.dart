import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: loginA(),
    );
  }));
}

class loginA extends StatefulWidget {
  @override
  State<loginA> createState() => _loginAState();
}

class _loginAState extends State<loginA> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage("Assets/Image/back4.jpg"), fit: BoxFit.fill)),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 130,
              ),
              Text("Login Page",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.blue[100],
                      fontStyle: FontStyle.italic)),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 60, left: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(color: Colors.white)),
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.blue[50]),
                      labelText: "Username",
                      labelStyle: TextStyle(color: Colors.blue[50]),
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Colors.blue[100],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60))),
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains(".")) {
                      return "Enter a valid name";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 60, left: 60),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(color: Colors.white)),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.blue[100]),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.blue[100]),
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.blue[100],
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
                      suffixIconColor: Colors.blue[100],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60))),
                  validator: (Password) {
                    if (Password!.isEmpty || Password.length < 6) {
                      return "Enter a valid Password";
                    } else
                      return null;
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.black,
                      minimumSize: Size(150, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60))),
                  onPressed: () {
                    var valid = formkey.currentState!.validate();
                    if (valid) {

                    }
                  },
                  child: Text("LOGIN")),
              TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Not a user ? Create an Account",
                    style: TextStyle(color: Colors.blue[50]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}