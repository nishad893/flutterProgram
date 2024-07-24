
import 'package:flutter/material.dart';
import 'package:flutterprogram/work/staggerdgridview.dart';

import '../work/homepage5new.dart';
import 'listviewcustom.dart';

void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    home: Tabbar(),
  ));
}

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar Example"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "chat",
              ),
              Tab(
                text: "contacts",
              ),
            ],
            dividerColor: Colors.greenAccent,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.cyan,
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Camara"),
            ),
            Home(),
            Stagger(),
            Customlistview(),
          ],
        ),
      ),
    );
  }
}
