import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: Expandaatile(),
  )));
}

class Expandaatile extends StatelessWidget {
  const Expandaatile({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body:Column(
        children: [
      
      
         ExpansionTile(
          title: Text("colors"),
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
            )
          ],
        ),
          ExpansionTile(
            title: Text("fruits"),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              )
            ],
          )]
      )
      ),
    );
  }
}
