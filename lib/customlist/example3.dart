import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: draw(),
          )));
}

class draw extends StatelessWidget {
  const draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        // backgroundColor: Colors.blueAccent,
        // leading: IconButton(onPressed: (){
        //   Navigator.push(context, route)
        // }
        //   ,icon: Icon(Icons.arrow_back),),

        title: Text("NavigationDrawer",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold  ),),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Nishad"),
              accountEmail: Text("nishad@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("Assets/IMAGE/Zerodha-KKite.webp"),
              ),
              // otherAccountsPictures: [
              //   CircleAvatar(backgroundImage: AssetImage("Assets/IMAGE/woman-590490_640.jpg"),)
              // ],
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("Assets/IMAGE/SEATREE.webp"))),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text("Upload"),
            ),
            ListTile(
              leading: Icon(Icons.offline_bolt),
              title: Text("offline"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("logout"),
            ),
            Divider(),
            ListTile(
              title: Text("Profile"),
            ),
            ListTile(
              leading: IconButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> Login5()));
              },icon: Icon(Icons.login),),
              title: Text("Login"),
            ),
            Divider(),
            ListTile(
              title: Text('Communication'),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.rate_review_sharp),
              title: Text("Rate us"),
            )
          ],
        ),
      ),
    );
  }
}
