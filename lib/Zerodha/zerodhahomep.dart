


import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Kitehome(),));
}

class Kitehome extends StatefulWidget {
  const Kitehome({super.key});

  @override
  State<Kitehome> createState() => _KitehomeState();
}

class _KitehomeState extends State<Kitehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,

        child:Column(children: [ Padding(
          padding: const EdgeInsets.only(top: 150,right: 390),
          child: SizedBox(height: 50,width: 150,
          child: Image(image: AssetImage("Assets/IMAGE/Zerodha-KKite.webp"),fit: BoxFit.fill,),),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: SizedBox(height: 200,width: 500,
            child: Text("   Welcome to \n   Kite by Zerodha",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30,left: 30,right: 30),
            child: TextField(

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Open a new account",
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Login to kite",
              ),
            ),
          )
        ]
      ),
      ) );
  }
}
