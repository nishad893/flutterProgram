import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'loginstateful.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: spalshnew(),
  ));
}

class spalshnew extends StatefulWidget {
  const spalshnew({super.key});

  @override
  State<spalshnew> createState() => _spalshnewState();
}

class _spalshnewState extends State<spalshnew> {
  @override
   void initState() {
    // TODO: implement initStatess
    Timer((Duration(seconds: 3)), () {
      Navigator.push(context, MaterialPageRoute(builder:( context)=>loginpage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          decoration: BoxDecoration(
            image: DecorationImage(
               image: AssetImage("Assets/IMAGE/pexels-hngstrm-1939485.jpg"),
                        fit: BoxFit.fill),


      ),
      child: Center(
          child: Image(image: AssetImage("Assets/IMAGE/splash.png"),height: 100,width: 100,),
      ),

      ),


    );
  }
}
