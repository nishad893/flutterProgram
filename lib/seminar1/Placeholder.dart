import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: PlaceholderStudy(),
    debugShowCheckedModeBanner: false,
  ));
}

class PlaceholderStudy extends StatelessWidget {
  const PlaceholderStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Placeholder(
            color: Color(0xFF455A64), // Optional: Set the color of the placeholder box
            strokeWidth: 2.0, // Optional: Set the width of the lines in the box
            fallbackWidth: 400.0, // Optional: Specify the width when in an unbounded space
            fallbackHeight: 600.0, // Optional: Specify the height when in an unbounded space
            child: Container(), // Optional: Add a child widget inside the placeholder
          )
        ]);
  }
}
