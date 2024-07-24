import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: democrsl(),
          )));
}

class democrsl extends StatelessWidget {
  const democrsl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: Colors.green[600],
        title: Text(
          "FARMERS FRESH ZONE",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        floating: true,
        pinned: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              )),
          Text(
            "kochi",
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
                hintText: "search for vegitable and fruits",
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
              padding: const EdgeInsets.only(left: 13),
              child: Container(
                alignment: Alignment.center,
                height: 20,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(color: Colors.greenAccent)),
                child: Text(
                  "VEGITABLES",
                  style: TextStyle(color: Colors.green[600]),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 20,
              width: 110,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(color: Colors.greenAccent)),
              child: Text(
                "FRUIT",
                style: TextStyle(color: Colors.green[600]),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 20,
              width: 110,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(color: Colors.greenAccent)),
              child: Text(
                "EXOTIC FRUITS",
                style: TextStyle(color: Colors.green[600]),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        CarouselSlider(
            items: [
              Image(
                image: AssetImage("Assets/IMAGE/bookpic.WEBP"),
                fit: BoxFit.fill,
              ),
              Image(
                image: AssetImage("Assets/IMAGE/bookpic.WEBP"),
                fit: BoxFit.fill,
              )
            ],
            options: CarouselOptions(
              aspectRatio: 1.50,
              autoPlay: true,
              enlargeCenterPage: true,

            )),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Container(
                height: 55,
                width: 480,
                decoration: BoxDecoration(
                  color: Colors.white,
                      border: Border.all(color: Colors.black)
                ),

                child: Row(
                  children: [

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 30,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text("Shop by Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
            ),
            SizedBox(height: 15,),

      ]))
    ]));
  }
}
