import 'dart:js';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

main() {
  runApp(DevicePreview(builder: (context)=>
     MaterialApp(
       useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Carouselwork(),
    ),
  ));
}

class Carouselwork extends StatelessWidget {
  var screen = [
    Text("Home"),
    Text("Favourite"),
    Text("Settings"),
  ];
  var image = [
    "Assets/IMAGE/tomato2024-06-11 at 19.53.39_4680a4f8.jpg",
    "Assets/IMAGE/pineappleImage 2024-06-11 at 19.54.02_d3da9f0a.jpg",
    "Assets/IMAGE/tomato2024-06-11 at 19.53.39_4680a4f8.jpg",
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green[600],
            title: Text(
              "FARMERS FRESH ZONE",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            actions: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              Text(
                "Kochi",
                style: TextStyle(color: Colors.white),
              )
            ],
            bottom: AppBar(
              backgroundColor: Colors.green[600],
              title: Container(
                color: Colors.white,
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for vegetables and fruits",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 23,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.greenAccent),
                        ),
                        child: Center(
                            child: Text(
                              "VEGETABLES",
                              style: TextStyle(color: Colors.green[600]),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 23,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.greenAccent),
                      ),
                      child: Center(
                          child: Text(
                            "FRUITS",
                            style: TextStyle(color: Colors.green[600]),
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 23,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.greenAccent),
                      ),
                      child: Center(
                          child: Text(
                            "EXOTIC CUTS",
                            style: TextStyle(color: Colors.green[600]),
                          )),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                CarouselSlider(
                  items: [
                    Image(
                      image: AssetImage("Assets/IMAGE/bookpic.WEBP"),
                      fit: BoxFit.cover,
                    ),
                    Image(
                      image: AssetImage("Assets/IMAGE/bookpic.WEBP"),
                      fit: BoxFit.cover,
                    ),
                  ],
                  options: CarouselOptions(
                      autoPlay: true, aspectRatio: 1.5, enlargeCenterPage: true),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                      ),
                      height: 60,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Icon(Icons.timer),
                                SizedBox(height: 20, child: Text("30 min policy"))
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(Icons.switch_account_outlined),
                                SizedBox(height: 20, child: Text("Tracebility"))
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(Icons.home),
                                SizedBox(
                                    height: 20, child: Text("Local Surrounding"))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Shop by category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                SizedBox(height: 20,),
                GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10.0),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
                    itemCount: image.length,
                    itemBuilder: (BuildContext, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 130,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 20.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(image[index])),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),


                        ],
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: BottomNavigationBar(
                      backgroundColor: Colors.white,
                      selectedItemColor: Colors.green,
                      unselectedItemColor: Colors.green,
                      currentIndex: index,
                      type: BottomNavigationBarType.fixed,
                      onTap: (tapindex) {},
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: "Home"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.shopping_cart), label: "Cart"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person), label: "Account")
                      ]),
                ),])),
        ],
      ),
    );
  }
}