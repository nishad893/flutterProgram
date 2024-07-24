

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(DevicePreview(
//     builder:(context)=> const MaterialApp(
//       useInheritedMediaQuery: true,
//       debugShowCheckedModeBanner: false,
//       home: Home(),
// //     )));
// }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var icons = [
    "Assets/IMAGE/Calender.png",
    "Assets/IMAGE/Grocery.png",
    "Assets/IMAGE/Location.png",
    "Assets/IMAGE/ACtivity.png",
    "Assets/IMAGE/todo.png",
    "Assets/IMAGE/settings.png",
  ];
  var colors = const Color(0xff563b73);
  var title = [
    "Calender",
    "Groceries",
    "Location",
    "Activity",
    "To do",
    "Settings",
  ];
  var subtitle = [
    "March, Wednesday",
    "Broccoli, Apple",
    "Lucy  going to Office",
    "Rose liked your Post",
    "Homework, Design",
    "",
  ];
  var number = [
    "3 Events",
    "4 Items",
    "",
    "",
    "4 Items",
    "2 Items",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: const Color(0xff392950),
        title: const Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Family",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox( height:30, width: 30,
                child: Image(image: AssetImage("Assets/IMAGE/notification.png"),

                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xff392950),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(icons.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: colors,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox( height: 40,width: 40,
                                child: Image(
                                  image: AssetImage(icons[index]),
                                )),
                            Padding(
                              padding: const EdgeInsets.only( top: 15),
                              child: Text(title[index], style: const TextStyle( fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( top: 10),
                              child: Text(subtitle[index], style: const TextStyle( color: Colors.white54),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( top: 10 ),
                              child: Text(number[index], style: const TextStyle( color: Colors.white70, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}