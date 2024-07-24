

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    home: Gridviewcustom(),
  )));
}

class Gridviewcustom extends StatefulWidget {
  const Gridviewcustom({super.key});

  @override
  State<Gridviewcustom> createState() => _GridviewcustomState();
}

class _GridviewcustomState extends State<Gridviewcustom> {
  var icons = [
    FontAwesomeIcons.facebook,
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
    FontAwesomeIcons.whatsapp

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
      appBar:AppBar(title:
        Text("Gridviewcudtom"),) ,

      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), childrenDelegate: SliverChildBuilderDelegate((context, index){
        return Card(

          color: color[index],
          child: Column(mainAxisAlignment: MainAxisAlignment.center
            ,children: [
              Icon(icons[index]),
              Text(name[index],style: GoogleFonts.abhayaLibre(),)

            ],

          ),
        );
      },childCount: name.length)),
    );
  }
}
