import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homemain(),
  ));
}

class homemain extends StatefulWidget {
  const homemain({super.key});

  @override
  State<homemain> createState() => _homemainState();
}

class _homemainState extends State<homemain> {
  bool showpass = false;
  bool showpass1 = false;
  bool showpass2 = false;
  bool showpass3= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[700],
        body: Stack(children: [
          Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 50),
                  child: Container(
                    color: Colors.orange[700],
                    height: 120,
                    width: 180,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 108),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("Assets/IMAGE/women2.jpg"),
                            radius: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50, top: 10),
                          child: Text(
                            "Hi Samual",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            "Welcome to Home",
                            style: TextStyle(fontSize: 10, color: Colors.white60),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 27),
                        child: Text(
                          "Living Room",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35, top: 10),
                        child: Text(
                          "3 Family Members \n Hve Access",
                          style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80, top: 30),
                        child: Text(
                          "4 Devices",
                          style: TextStyle(fontSize: 10, color: Colors.orange[700]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showpass) {
                                  showpass = false;
                                } else {
                                  showpass = true;
                                }
                              });
                            },
                            icon: Icon(
                              showpass == true
                                  ? Icons.swipe_right_alt
                                  : Icons.swipe_left_alt,
                              size: 35,
                              color: Colors.orange,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 27),
                          child: Text(
                            "Living Room",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 35, top: 10),
                          child: Text(
                            "3 Family Members \n Hve Access",
                            style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 80, top: 30),
                          child: Text(
                            "4 Devices",
                            style:
                            TextStyle(fontSize: 10, color: Colors.orange[700]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (showpass1) {
                                    showpass1 = false;
                                  } else {
                                    showpass1 = true;
                                  }
                                });
                              },
                              icon: Icon(
                                showpass1 == true
                                    ? Icons.swipe_right_alt
                                    : Icons.swipe_left_alt,
                                size: 35,
                                color: Colors.orange,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 27),
                            child: Text(
                              "Living Room",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 35, top: 10),
                            child: Text(
                              "3 Family Members \n Hve Access",
                              style:
                              TextStyle(fontSize: 10, color: Colors.grey[700]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 80, top: 30),
                            child: Text(
                              "4 Devices",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.orange[700]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (showpass2) {
                                      showpass2 = false;
                                    } else {
                                      showpass2 = true;
                                    }
                                  });
                                },
                                icon: Icon(
                                  showpass2 == true
                                      ? Icons.swipe_right_alt
                                      : Icons.swipe_left_alt,
                                  size: 35,
                                  color: Colors.orange,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 27),
                                    child: Text(
                                      "Living Room",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(right: 35, top: 10),
                                    child: Text(
                                      "3 Family Members \n Hve Access",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey[700]),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(right: 80, top: 30),
                                    child: Text(
                                      "4 Devices",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.orange[700]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 100),
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (showpass3) {
                                              showpass3 = false;
                                            } else {
                                              showpass3= true;
                                            }
                                          });
                                        },
                                        icon: Icon(
                                          showpass3 == true
                                              ? Icons.swipe_right_alt
                                              : Icons.swipe_left_alt,
                                          size: 35,
                                          color: Colors.orange,
                                        )),
                                  ),
                                ],
                              ),),
                          ),
                        ],
                      )),
                )
              ]))
        ]));
  }
}
