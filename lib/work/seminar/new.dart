

import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    home: tester(),
  )));
}

class tester extends StatefulWidget {
  const tester({super.key});

  @override
  State<tester> createState() => _testerState();
}

class _testerState extends State<tester> {
  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(
      "Assets/Animation/rive8animated_login_character(2).json ",
      fit: BoxFit.cover,
      alignment: Alignment.center,

    );
  }
}
