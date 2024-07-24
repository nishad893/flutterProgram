import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main(){

    runApp(DevicePreview(builder: (context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home:clipperg(),
    )));

  }



class clipperg extends StatelessWidget {
  const clipperg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 200,
            width: 300,
            child: ClipRect(
              clipBehavior: Clip.hardEdge,
                child: Image(
              image: AssetImage("Assets/IMAGE/HAVASU 102.jpeg"),
            )),
          ),
          Container(
            child: ClipOval(
              child: Image(
                            image: AssetImage("Assets/IMAGE/newyork.jpg"),
                          ),
            ),
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image(
                  image: AssetImage(
                      "Assets/IMAGE/portugal 2024-05-30 162223.png")),
            ),
          )
        ],
      ),
    );
  }
}
