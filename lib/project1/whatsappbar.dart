
  import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: whatsbar(),
  )));
}

class whatsbar extends StatelessWidget {
    const whatsbar({super.key});

    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length:3,child:  Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075e55),
            title: Text("Whatsapp",style: TextStyle(color: Colors.white),),
            actions: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert,color: Colors.white,),
            ),],
            bottom: TabBar(labelColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt),),
                Tab(text: "Chats",),
                Tab(text: "Status",),
                Tab(text: "Calls",),


              ],
              dividerColor: Colors.white,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white10,
            ),
          ),
          body: TabBarView(children: [
            Center(child: Text("Whatsapp"),)

          ],),
        ),
      );
    }
  }
