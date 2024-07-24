


import 'package:flutter/material.dart';

class Homeadapt extends StatelessWidget {


  final String email;

    const Homeadapt({Key?key,required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text("Welcomw $email"),
      ),

    );
  }
}
