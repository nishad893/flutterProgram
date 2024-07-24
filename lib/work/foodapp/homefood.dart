

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,


        home: foodhome(),
      ));
}

class foodhome extends StatefulWidget {
  const foodhome({super.key});

  @override
  State<foodhome> createState() => _foodhomeState();
}

class _foodhomeState extends State<foodhome> {
    var index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find Your Best",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  "Nutrition Meal ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
            bottom: AppBar(
              toolbarHeight: 91,
              title: Container(
                height: 40,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Search Foods",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: Icon(Icons.search),
                    )
                  ],
                ),
              ),
            )),
        body:

        Column(
          children: [
            Stack(children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 110,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(10))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 205),
                child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(10))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(10))),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 113,right: 30),
                child: Container(
                  height: 30,
                  width: 400,
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text("BAKERY",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text("DAIRY",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text("SEAFOODS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Text("SNACKS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),



            ]),
            SizedBox(height:20 ,),
            CarouselSlider(items:[
              ClipRRect(borderRadius: BorderRadius.circular(15),
                  child: Image(image: AssetImage("Assets/IMAGE/img_4.png"),)),
              Image(image: AssetImage("Assets/IMAGE/img_3.png"),),

            ]
                , options:CarouselOptions(
                  height: 300,
                    aspectRatio: 1.0
                )),

          ],




        ),
      bottomNavigationBar:BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex){
            setState((){
              index=tapindex;
            }

            );

          },
          backgroundColor: Colors.greenAccent,
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "notification")
          ]) ,



    );
  }
}
