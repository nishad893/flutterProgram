

import 'package:flutter/material.dart';

class Homesq2 extends StatelessWidget {
  final data;

  Homesq2({Key?key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = data[0]['name'];
    var email = data[0]['email'];

    return Scaffold(
      appBar: AppBar(title:
      Text("Welcome $name"),),

      body: Center(
        child: Text("flutter $email"),
      ),

    );
  }
}


