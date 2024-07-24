import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: Stackex(),
  )));
}

class Stackex extends StatelessWidget {
  const Stackex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Stack(
          children: [
            Container(color: Colors.blueAccent,height:double.infinity,width:double.infinity,),
            Positioned(child: Container(color: Colors.tealAccent,),
                height: 200,width: 200,
            left: 150,  top: 150,),
            Positioned(child: Container(color: Colors.redAccent,),
                height: 150,width: 150,right: 150,top: 150,),
          ],
        ),
      ),

    );
  }
}
