

import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    home: bottomsheet(),
    debugShowCheckedModeBanner: false,
  )));
}

class bottomsheet extends StatelessWidget {
  const bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("bottom sheet"),

        actions: [
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("Invite")),
              PopupMenuItem(child: Text("New Group")),

            ];
          })
        ],
      ),


      body: Container(
        child: GestureDetector(
          onTap: show(context),

          child: Text("bottom Sheet"),
        ),
      ),

    );
  }
}



 show(BuildContext context){
  showModalBottomSheet(context: context, builder: (context){
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.share),
          title: Text("Share"),
        ),
        ListTile(
          leading: Icon(Icons.facebook),
          title: Text("facebook"),

        ),

          ListTile(
            leading: Icon(FontAwesomeIcons.instagram),
            title: Text("instagram"),
          )

      ],
    );
  });
 }
