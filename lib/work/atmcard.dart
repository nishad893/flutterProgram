
import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
main(){

  runApp(DevicePreview(builder: (context)=>
  MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: atm(),
  )));
}

class atm extends StatelessWidget {
  const atm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [Colors.black, Color(0xff830408)],
                begin: Alignment.topLeft,
                end: Alignment.topRight),


          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100,left: 35),
                child: Container(height: 30,width: 300,
                    child: Text("6522  2525  3625  4587",style: TextStyle(color: Colors.white,fontSize: 25),)),
              ),
              
             Padding(
               padding: const EdgeInsets.only(left: 230,top: 20),
               child: Container(height: 40,width: 100,
                   child: Image(image: AssetImage("Assets/IMAGE/csb bank.png"),fit: BoxFit.fill,)),
             ),
              Padding(
                padding: const EdgeInsets.only(top:40,left: 30 ),
                child: Container(
                  height: 50,width: 60,
                    child: Image(image: AssetImage("Assets/IMAGE/atmchip.png"),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 147,left: 250),
                child: Container(
                  height: 40,width: 90,
                  child: Image(image: AssetImage("Assets/IMAGE/rupay.png"),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 160),
                child: Container(
                  height: 30,width: 200,
                  child: Text("VINAYAK HEGDE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100,top: 140),
                child: Container(
                  height: 30,width: 30,
                  child: Text("VALID\nTHRU",style: TextStyle(fontSize: 6,color: Colors.white),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130,top: 135),
                child: Container(
                  height: 25,width: 90,
                  child: Text("08/25",style: TextStyle(fontSize: 18,color: Colors.white),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:290,top: 180 ),
                child: Container(
                  height: 14,width: 100,
                  child: Text("PLATINUM",style: TextStyle(fontSize: 8,color: Colors.white),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 100),
                child: Container(
                  height: 180,width: 20,
                  child: Text("a\na\na\nd\na\na\na\na\na\na\na",style: TextStyle(fontSize: 5,color: Colors.white),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 260,top: 70),
                child: Container(
                  height: 25,width: 30,
                  child: Image(image: AssetImage("Assets/IMAGE/upid.png"),),
                ),
                
              ),
            

            ],
          ),
        ),
      ),
    );
  }
}
