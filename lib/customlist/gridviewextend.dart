



import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewextend(),
  ));
}

class Gridviewextend extends StatelessWidget {
  var icons = [
    Icons.car_repair,
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.bus_alert,
    Icons.train,
    Icons.directions_walk,
    Icons.contact_mail_rounded,
    Icons.duo,
    Icons.hourglass_bottom,
    Icons.mobile_friendly,
    Icons.message,
    Icons.key,
    Icons.wifi,
    Icons.bluetooth,
    Icons.face
  ];
  var name = [
    "Car",
    "Bicycle",
    'Boat',
    'bus',
    'Train',
    'Walk',
    'Contact',
    'Duo',
    'Hour',
    'Mobile',
    'Message',
    'Key',
    'Wifi',
    'Bluetooth',
    'Smile'
  ];
  var color=[Colors.greenAccent,Colors.blueAccent,Colors.blueGrey,Colors.redAccent,Colors.grey,Colors.yellowAccent,Colors.orangeAccent
    ,Colors.amberAccent,Colors.blueGrey,Colors.deepOrange,Colors.lightGreenAccent,Colors.white12,Colors.brown,Colors.blueAccent,Colors.yellowAccent];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent:75,
      children: List.generate(name.length, (index){
        return Card(
          color: color[index],
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icons[index]),
              Text(name[index])
            ],
          ),
        );
      }),),
    );
  }
}
