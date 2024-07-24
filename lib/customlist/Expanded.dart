


import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    home:expande(),
    debugShowCheckedModeBanner: false,
  )));
}

class expande extends StatelessWidget {
  const expande({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
              height: 100,
              width: 150,
              color: Colors.yellowAccent,
            ),
          Expanded(
            child: Container(height: 120,
            width: 200,
            color: Colors.blue,),
          ),
          Expanded(
            child: Container(
              height: 200,
              width: 170,
              color: Colors.redAccent,
            ),
          )
        ],
      ),
    );
  }
}
