


import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false ,
    home: Kitesplash(),
  ));
}

class Kitesplash extends StatefulWidget {
  const Kitesplash({super.key});

  @override
  State<Kitesplash> createState() => _KitesplashState();
}

class _KitesplashState extends State<Kitesplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,

        child: Center(
          child: SizedBox(height: 150,width: 150,
          child: Image(image: AssetImage("Assets/IMAGE/Zerodha-KKite.webp"),),),
        ),
      )



    );
  }
}

