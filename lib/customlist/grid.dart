


import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: gridvieweg(),));
}

class gridvieweg extends StatelessWidget {
  const gridvieweg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Card(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_box),
              Text("account box"),
            ],
          ),
        ),
        Card(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit),
            Text("ac_unit"),
          ],
        ),)
      ],),
    );
  }
}
