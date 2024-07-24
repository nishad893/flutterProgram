import 'dart:html';
import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: MyPro(),
            debugShowCheckedModeBanner: false,
          )));
}

class MyPro extends StatelessWidget {
  const MyPro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 240.0,
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: Text(
                      "Harshad Mehtha",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[800]),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Icon(
                        CupertinoIcons.line_horizontal_3,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 40),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 40),
                      child: Text(
                        "Edit Your Profile ",
                        style: TextStyle(color: Colors.white60, fontSize: 20),
                      ),
                    )
                  ],
                ),
            ),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Icon(Icons.person),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "My Account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            height: 55,
            width: 250,
            top: 440,
            left: 70,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Icon(Icons.dashboard),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "Dashboard",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            height: 55,
            width: 250,
            top: 520,
            left: 70,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Icon(Icons.info),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "About",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            height: 55,
            width: 250,
            top: 600,
            left: 70,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Icon(Icons.logout_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "Logout",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            height: 55,
            width: 250,
            top: 680,
            left: 70,
          ),
          Stack(
            children: [
              Positioned(
                child: CircleAvatar(
                  backgroundImage: AssetImage("Assets/IMAGE/Harshath.webp"),
                  radius: 70,
                ),
                top: 200,
                right: 130,
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Colors.greenAccent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                label: "Favorite",
                backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart), label: "settings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_sharp), label: "notification")
          ]),

    );
  }
}
