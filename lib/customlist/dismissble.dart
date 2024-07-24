


import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: dissmisebleex(),
  )));
}

class dissmisebleex extends StatelessWidget {
  var data=["data1""data2","data3","data4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      appBar: AppBar(backgroundColor: Colors.red,
        title: Text("Dissmisseble"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Dismissible(key:ValueKey(data),
            background: Container(color: Colors.red,),
            secondaryBackground: Container(color: Colors.yellow,),

            child:ListTile(
              title: Center(child: Text(data[index])),
            ));
      } ,itemCount: data.length,),

    );
  }
}
