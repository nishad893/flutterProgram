

import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
main(){
  runApp(DevicePreview(builder: (context)=>
  MaterialApp(

    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: switherex3(),
  ) ));
}

class switherex3 extends StatefulWidget {
  const switherex3({super.key});

  @override
  State<switherex3> createState() => _switherex3State();
}

class _switherex3State extends State<switherex3> {
  int index =0;
  final widgets =[
    Image.asset('Assets/IMAGE/HAVASU 102.jpeg',fit: BoxFit.fill,key: Key('1'),),
    Image.asset('Assets/IMAGE/London2-1347665170-612x612.jpg',fit: BoxFit.fill,key: Key('2'),),
    Image.asset('Assets/IMAGE/portugal 2024-05-30 162223.png',fit: BoxFit.fill,key: Key('3'),),
    Image.asset('Assets/IMAGE/Rockey montain.jpg',fit: BoxFit.fill,key: Key('4'),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        title:
        Text("Animated Switcher",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),),
          body: Center(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 1000),
              reverseDuration: Duration(milliseconds: 500),
              transitionBuilder: (child,animation)=>ScaleTransition(
                child: SizedBox.fromSize(child: child,) ,
                 scale: animation),
              child: widgets[index],
            ),
          ),
    floatingActionButton: FloatingActionButton(backgroundColor: Colors.green,
    child: Icon(Icons.forward,color: Colors.white,)
    ,onPressed:(){
      final isLastIndex = index == widgets.length - 1;
      setState(() => index = isLastIndex ? 0 : index +1,

      );
      },));
  }
}
