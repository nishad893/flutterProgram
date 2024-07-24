import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Sample(),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("Assets/IMAGE/pexels-hngstrm-1939485.jpg"),fit: BoxFit.fill)

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("Assets/IMAGE/facebook.png"),height: 100,width: 100,),
          Text(
            "Facebook",
            style: TextStyle(fontSize: 75, color: Colors.blue),
          )
        ],
      ),
    ));
  }
}
