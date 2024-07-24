import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Gridviwebuider(),));
}

class Gridviwebuider extends StatelessWidget {
  var icons = [
    Icons.settings,
    Icons.home,
    Icons.lock_clock,
    Icons.add_alert,
    Icons.add_card,
    Icons.backup,
    Icons.laptop,
    Icons.logout
  ];
  var name = [
    "settings",
    "home",
    "lock_clock",
    "add_alert",
    "add_card",
    "backup",
    "laptop",
    "logout"
  ];
  var color = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellowAccent,
    Colors.blue,
    Colors.blueGrey,
    Colors.redAccent,
    Colors.greenAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context,index){
        return Card(
        color: color[index],
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icons[index]),
       Text(name[index])
    ],),

        );
    },itemCount: name.length,
      ) );
  }
}
