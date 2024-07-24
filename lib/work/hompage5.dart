import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage5(),
  ));
}

class homepage5 extends StatefulWidget {
  const homepage5({super.key});

  @override
  State<homepage5> createState() => _homepage5State();
}

class _homepage5State extends State<homepage5> {
  var name = [
    "Calender",
    'Groceries',
    'Loacation',
    'Activity',
    'To do',
    'Settings'
  ];
  var icons = [
    Icons.calendar_today,
    Icons.local_grocery_store,
    Icons.location_on_rounded,
    Icons.local_activity,
    Icons.note_add_rounded,
    Icons.settings
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 200,


      ),

    );
  }
}
