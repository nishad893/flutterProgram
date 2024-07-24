import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutterprogram/customlist/customwidget/custmwidget.dart';

main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: customwidget2(),
  )));

}


 class customwidget2 extends StatelessWidget {
   const customwidget2({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Padding(
         padding: const EdgeInsets.only(top: 150),
         child: Container(height: 200,
           child: custmwidget(
             text:Text ("Hello"),
             img: Image(image: AssetImage("Assets/IMAGE/Trondheim 2024-05-30 162248.png")),
             clr: Colors.black12,
             onpress: (){}, subtitle: null,

           ),
         ),
       ),
     );
   }
 }
