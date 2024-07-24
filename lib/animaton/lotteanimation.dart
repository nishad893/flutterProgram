

import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>
     MaterialApp(
       useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: animationex(),
    ),
  ));
}

class animationex extends StatefulWidget {
  const animationex({super.key});

  @override
  State<animationex> createState() => _animationexState();
}

class _animationexState extends State<animationex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Lottie.asset("Assets/Animation/Animation - 1717562430572(1).json")),
      ),
    );
  }
}
