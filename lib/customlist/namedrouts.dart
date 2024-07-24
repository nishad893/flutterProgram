


import 'dart:js';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutterprogram/customlist/gridviewcount.dart';
import 'package:flutterprogram/customlist/listseperated.dart';
void main(){
  runApp(MaterialApp(
    home: namedrouteg(),
    routes: {
      'grid':(context)=>Gridviewcount(),
      'list':(context)=>Listseperated(),
    },
  ));

}

class namedrouteg extends StatelessWidget {
  const namedrouteg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Wrap(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,'grid');
            },
                child: Text("Grid")),
            SizedBox(width: 30,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'list');
            },
                child:Text("List"))
          ],
        ),
      ),
    );
  }
}
