import 'package:flutter/cupertino.dart';
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
  bool showpass3 = false;
  bool showpass4 = false;
  bool showpass5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[700],
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
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
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 27),
            child: Container(
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220, top: 200),
            child: Container(
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 27),
                    child: Text(
                      "Bed Room",
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
            padding: const EdgeInsets.only(left: 27,top: 400),
            child: Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 27),
                    child: Text(
                      "Guest Room",
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
                ])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220,top: 400),
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
                      "Kitchen",
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
          Padding(
            padding: const EdgeInsets.only(left: 27,top: 600),
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
                      "Kids Room",
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
                            if (showpass4) {
                              showpass4 = false;
                            } else {
                              showpass4= true;
                            }
                          });
                        },
                        icon: Icon(
                          showpass4 == true
                              ? Icons.swipe_right_alt
                              : Icons.swipe_left_alt,
                          size: 35,
                          color: Colors.orange,
                        )),
                  ),
                ],
              ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220,top: 600),
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
                      "Balcony",
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
                            if (showpass5) {
                              showpass5 = false;
                            } else {
                              showpass5= true;
                            }
                          });
                        },
                        icon: Icon(
                          showpass5 == true
                              ? Icons.swipe_right_alt
                              : Icons.swipe_left_alt,
                          size: 35,
                          color: Colors.orange,
                        )),
                  ),
                ],
              ),),
          ),
        ]),
    bottomNavigationBar:
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        height: 60,width: 400,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(Icons.home_outlined,size: 30,color: Colors.grey,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Icon(Icons.access_time,color: Colors.grey,),
            ),
           Padding(
             padding: const EdgeInsets.only(left: 60),
             child: Icon(CupertinoIcons.plus_circle_fill,color: Colors.orange[700],size: 40,),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Icon(Icons.signal_cellular_alt_sharp,color: Colors.grey,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Icon(Icons.settings_outlined,color: Colors.grey,),
            )

          ],
        ),
      ),


    );
  }
}
