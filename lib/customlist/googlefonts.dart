import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
main(){

  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    home: fonts(),
    debugShowCheckedModeBanner: false,
  )));
}

class fonts extends StatelessWidget {
  const fonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "story",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Text("The King Is Painting", style: GoogleFonts.abrilFatface(
            textStyle:Theme.of(context).textTheme.displayLarge,
            fontSize:38,
            fontWeight:FontWeight.w700,

          )),
          SizedBox(
            height: 50,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Text(
              "Once upon a time, there was a Kingdom. The king there only had one leg and one eye, but he was very intelligent and kind. Everyone in his kingdom lived a happy and a healthy life because of their king. One day the king was walking through the palace hallway and saw the portraits of his ancestors. He thought that one day his children will walk in the same hallway and remember all the ancestors through these portraitsOnce upon a time, there was a Kingdom. The king there only had one leg and one eye, but he was very intelligent and kind. Everyone in his kingdom lived a happy and a healthy life because of their king. One day the king was walking through the palace hallway and saw the portraits of his ancestors. He thought that one day his children will walk in the same hallway and remember all the ancestors through these portraitsOnce upon a time, there was a Kingdom. The king there only had one leg and one eye, but he was very intelligent and kind. Everyone in his kingdom lived a happy and a healthy life because of their king. One day the king was walking through the palace hallway and saw the portraits of his ancestors. He thought that one day his children will walk in the same hallway and remember all the ancestors through these portraits",
              style: TextStyle(fontSize: 22),
            ),
          ))
        ],
      ),
    );
  }
}
