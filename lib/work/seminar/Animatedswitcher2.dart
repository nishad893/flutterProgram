

import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: switcher2(),
  )));
}

class switcher2 extends StatefulWidget {
  const switcher2({super.key});

  @override
  State<switcher2> createState() => _switcher2State();
}

class _switcher2State extends State<switcher2> {
  bool flag=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        title:
        Text("Animated Switcher",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),),

      body:Center(
        child: AnimatedSwitcher(duration: Duration(milliseconds: 1000),

        child:flag?
        Container(
          key: Key('1'),
          color: Colors.orange,
          height: 400,
          width: 300,
        ): Container(
          key: Key('2'),
          color: Colors.blue,
          height: 400,
          width: 300,
        )
      ),

      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.green,
        child: Icon(Icons.forward,color: Colors.white,)
        ,onPressed: ()=> setState(()=>flag = !flag,

        )
      ),
    );
  }
}
