import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: SLiver(),
          )));
}

class SLiver extends StatelessWidget {
  var name = [
    "manu",
    'abdu',
    "andu",
    "aman",
    "jabi",
    "manu",
    'abdu',
    "andu",
    "aman",
    "jabi",
    "manu",
    'abdu',
    "andu",
    "aman",
    "jabi"
  ];
  var phone = [
    "4528976354",
    "2548976524",
    "5879643589",
    "9876542365",
    "9875634258",
    "4528976354",
    "2548976524",
    "5879643589",
    "9876542365",
    "9875634258", "4528976354",
    "2548976524",
    "5879643589",
    "9876542365",
    "9875634258"
  ];
  var photo = [
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg", "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg"
  ];
  var color = [
    Colors.blue,
    Colors.yellowAccent,
    Colors.red,
    Colors.orangeAccent,
    Colors.greenAccent,
    Colors.blue,
    Colors.yellowAccent,
    Colors.red,
    Colors.orangeAccent,
    Colors.greenAccent,
    Colors.blue,
    Colors.yellowAccent,
    Colors.red,
    Colors.orangeAccent,
    Colors.greenAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            title: Text("Custom Appbar"),
            floating: true,
            pinned: true,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            ],
            bottom: AppBar(
              title: Container(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "search Something",
                      suffixIcon: Icon(Icons.camera_alt),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60))),
                ),
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildListDelegate(List.generate(name.length, (index) {
            return Container(
              child: Card(
                color: color[index],
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(
                    photo[index],
                  )),
                  title: Text(name[index]),
                  subtitle: Text(phone[index]),
                ),
              ),
            );
          })))
        ],
      ),
    );
  }
}
