import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Citylist(),
  ));
}

class Citylist extends StatelessWidget {
  var cityname = ["Delhi", "Finland", "London", "Vancouver", "New york"];
  var photo = [
    "Assets/IMAGE/india-gate-delhi-600nw-1140074150.webp",
    "Assets/IMAGE/finland-skyscape-finland.jpg",
    "Assets/IMAGE/London2-1347665170-612x612.jpg",
    "Assets/IMAGE/van.jpg",
    "Assets/IMAGE/newyork.jpg"
  ];
  var country = ["India  ", "Europe  ", "UK", "Canada", "US"];

  var population2 = ["32.9 mil", "5.54 mil", "8.8 mil", "2.6 mil", "3.2 mil"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.orange[900],
          title: Center(
              child: Text(
            "Cities Around World",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold,),
          )),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                color: Colors.orangeAccent,
                child: ListTile(
                  leading:SizedBox(height:150,
                  width: 90,child:   Image(image: AssetImage(photo[index]),height: 250,fit: BoxFit.scaleDown,),),

               title: Text(cityname[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(country[index],style: TextStyle(color: Colors.black,),),
                    Text("Population:${population2[index]}")
                  ],
                ),

                   )    );
          },
          itemCount: photo.length,
        ));
  }
}
