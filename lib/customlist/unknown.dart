

import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder:(context)=> MaterialApp(
      useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,    home: Back(),)));
}

class Back extends StatelessWidget {
  const Back({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool>showdialogpop()async{
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Exit"),
          content: Text("Co you want Exit"),
          actions: [

            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child: Text("Yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);}, child: Text("No")),
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text("Cancel"))
          ],
        );
      });
    }
    return WillPopScope(
      onWillPop: showdialogpop,child: Scaffold(body: Center(child: Text("Welcome to flutter")),),

    );
  }
}