

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: tabs1(),
      ));
}

class tabs1 extends StatefulWidget {
  const tabs1({super.key});

  @override
  State<tabs1> createState() => _tabs1State();
}

class _tabs1State extends State<tabs1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.more_vert_rounded, color: Colors.white),
                )
              ],
              backgroundColor: Color(0xff075e55),
              title: Text(
                "Whatsapp",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              bottom: TabBar(
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  )
                ],
                dividerColor: Colors.white,
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.white60,
              ),
            ),
            body:  TabBarView(
              children: [
                Center(
                    child: Image(
                        image: AssetImage(
                            "Assets/IMAGE/WhatsApp Image  chats 2024-06-03 at 10.40.44_c1257c6a.jpg"),fit: BoxFit.fill,)),
              ],
            )));
  }
}
