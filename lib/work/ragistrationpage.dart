import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutterprogram/work/loginpage.dart';

void main() {
  runApp(DevicePreview(
    builder:(context)=> MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: registration5(),
    )));
}

class registration5 extends StatefulWidget {
  const registration5({super.key});

  @override
  State<registration5> createState() => _registration5State();
}

class _registration5State extends State<registration5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Registration",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/IMAGE/pre-registration_form_template_Thumbnail.png"),fit: BoxFit.fill)),

        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 70,left: 180,right: 150),
            //   child: Text(
            //     "Registration",
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 40),
              child: TextField(
                decoration: InputDecoration(


                    hintText: ("Full Name"),
                    labelText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Include numerics",
                    prefixIcon: Icon(Icons.person),
                    labelText: "username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Min 8 character",
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password",
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login5()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      maximumSize: Size(200, 60)),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
