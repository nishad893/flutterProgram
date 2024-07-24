


import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutterprogram/work/loginpage.dart';
void main (){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: splash5(),
      );
    }
  ));
}

class splash5 extends StatefulWidget {


  @override
  State<splash5> createState() => _splash5State();

}



class _splash5State extends State<splash5> {
  @override
  void  initState(){
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Login5()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF5F1D8),

        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
             children: [SizedBox(height:300,width:300,child: Image(image: AssetImage("Assets/IMAGE/img_2.png")))
              ,Text("Happy",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)],),
        ),
      ),
    );
  }
}
