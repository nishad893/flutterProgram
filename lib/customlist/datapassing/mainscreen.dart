
import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutterprogram/customlist/datapassing/dummydata.dart';
import 'package:flutterprogram/customlist/datapassing/productdetails.dart';
import 'dummydata.dart';

main(){
  runApp(DevicePreview(builder: (context)=>
  MaterialApp(

    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: mainscreen(),
    routes: {
      'prodectdetails':(context)=>prodectdetails(),

    },
  )));
}

class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dummydata.map((product) => GestureDetector(
          child:  Center(
            child: Column(
              children: [
                Image(image: AssetImage("${product['image']}")),
                Text("${product['name']}")

              ],
            ),
          ) ,
          onTap: ()=>getproduct(context,product['id']),

        )).toList(),
      ),
    );
  }
  getproduct(BuildContext context,product){
     Navigator.pushNamed(context, 'prodectdetails',arguments: product);
  }
}
