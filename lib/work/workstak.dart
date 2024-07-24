

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(DevicePreview(
      builder: (context) => const MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: project1(),
          )));
}

class project1 extends StatelessWidget {
  const project1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Icon(Icons.arrow_back),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.more_vert_outlined),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              height: double.infinity,
              width: double.infinity,
            ),

            // CircleAvatar(),
            // CircleAvatar(),
            // CircleAvatar(),
            // CircleAvatar(),

            const Padding(
              padding: EdgeInsets.only(left: 125),
              child: CircleAvatar(foregroundColor: Colors.blue,


                backgroundImage: AssetImage("Assets/IMAGE/women2.jpg"),
                radius: 70,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 170, left: 65),
              child: CircleAvatar(
                backgroundImage: AssetImage("Assets/IMAGE/facebook.png"),
                radius: 25,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 170, left: 140),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    "Assets/IMAGE/google-symbol-logo-red-and-white-design-vector-46334860.jpg"),
                radius: 25,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 170, left: 210),
              child: CircleAvatar(
                backgroundImage: AssetImage("Assets/IMAGE/Twitter.png"),
                radius: 25,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 170, left: 280),
              child: CircleAvatar(
                backgroundImage:
                    AssetImage("Assets/IMAGE/circle-linkedin-1024.webp",),
                radius: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Center(
                child: Container(
                  child: const Column(
                    children: [
                      Text(
                        "Chromicle",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.black),
                      ),
                      Text("@amFoss"),
                      Text(
                        "Mobile App Developer and Open\n           Source enthusiastic",
                        style: TextStyle(fontSize: 23),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 380, left: 30),
              child: Container(
                height: 55,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 13),
                      child: Icon(
                        CupertinoIcons.person,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 11),
                      child: Text(
                        "Privacy",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 150, top: 11),
                      child: Icon(
                        CupertinoIcons.right_chevron,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 455, left: 30),
                child: Container(
                  height: 55,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 13),
                        child: Icon(
                          CupertinoIcons.timer,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 11),
                        child: Text(
                          "Purchase History",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 49, top: 11),
                        child: Icon(
                          CupertinoIcons.right_chevron,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 529, left: 30),
              child: Container(
                height: 55,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 13),
                        child: Icon(
                          CupertinoIcons.question_circle,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 11),
                        child: Text(
                          "Help & Support",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 67, top: 11),
                        child: Icon(
                          CupertinoIcons.right_chevron,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 603, left: 30),
              child: Container(
                height: 55,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 13),
                        child: Icon(
                          CupertinoIcons.settings,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 11),
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 136, top: 11),
                        child: Icon(
                          CupertinoIcons.right_chevron,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 675, left: 30),
              child: Container(
                height: 55,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 13),
                        child: Icon(
                          CupertinoIcons.person_badge_plus,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 11),
                        child: Text(
                          "Invite a Friend",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 75, top: 11),
                        child: Icon(
                          CupertinoIcons.right_chevron,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
            )
          ],
        ));
  }
}
