import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Mystartup(),
  ));
}

class Mystartup extends StatefulWidget {
  const Mystartup({super.key});

  @override
  State<Mystartup> createState() => _MystartupState();
}

class _MystartupState extends State<Mystartup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.amber),

     child:Center(
         child:Image(image: AssetImage("Assets/IMAGE/misukicon2024-05-2180003.png",),height: 100,width: 100,)
     ) , ),
    );
  }
}
