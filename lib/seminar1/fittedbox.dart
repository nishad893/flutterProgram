import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DevicePreview(builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
          ),
          body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 10), // Without FittedBox
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.green)),
                  child: Text('This is explanation'),
                  width: 80,
                  height: 20,
                ),
                SizedBox(
                  height: 12,
                ),

                // With FittedBox

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.green),
                  ),
                  child: FittedBox(child: Text('This is explanation')),
                  width: 80,
                  height: 20,
                ),

                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}