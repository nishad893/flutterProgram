import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: exm2(),
  )));
}


class exm2 extends StatelessWidget {
  const exm2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Lottie.asset("Assets/Animation/Animation2 - 1717562430572(1).json")),
      ),
    ) ;
  }
}
