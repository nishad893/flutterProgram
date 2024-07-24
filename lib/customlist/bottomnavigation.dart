
import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>
  MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: bottomnavig()
    ,
  )));
}

class bottomnavig extends StatefulWidget {
  @override
  State<bottomnavig> createState() => _bottomnavigState();
}

class _bottomnavigState extends State<bottomnavig> {
   var screen=[
     Text("Home"),
     Text("Favorite"),
     Text("Settings"),
     Text("Notification")
   ];

   int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: screen[index],) ,
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: index,
          onTap: (tapindex){
          setState((){
            index=tapindex;
          }

          );

          },
          backgroundColor: Colors.greenAccent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          items: [

        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.yellowAccent),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "notification")
      ]) ,
    );
  }
}
