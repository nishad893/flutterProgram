import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

main() {
  runApp(DevicePreview(builder: (context)=>
     MaterialApp(
       useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Animatedswithc(),
    ),
  ));
}

class Animatedswithc extends StatefulWidget {
  @override
  State<Animatedswithc> createState() => _AnimatedswithcState();
}

class _AnimatedswithcState extends State<Animatedswithc> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Switcher"),
      ),
      body: Column(
        children: [
          AnimatedSwitcher(
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: Text(
                "$count",
                key: ValueKey<int>(count),
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              duration: Duration(milliseconds: 2000),),
          Padding(
            padding: const EdgeInsets.only(left: 170,top: 400),
            child: FloatingActionButton(onPressed: (){
              setState(() {
                count+=1;
              });
            },child: Padding(
              padding: const EdgeInsets.all(11),
              child: Text("click here"),
            ),),
          )
        ],
      ),
    );
  }
}
