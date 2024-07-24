import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

void main() {
  runApp(const MaterialApp(
    home: LiquidProgresseg(),
  ));
}

class LiquidProgresseg extends StatefulWidget {
  const LiquidProgresseg({super.key});

  @override
  State<LiquidProgresseg> createState() => _LiquidProgressegState();
}

class _LiquidProgressegState extends State<LiquidProgresseg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liquid Progress Indicator"),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 280,
          alignment: Alignment.center,
          child: LiquidCircularProgressIndicator(
            value: 0.5,
            valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
            backgroundColor: Colors.white,
            borderColor: Colors.black54,
            borderWidth: 0.0,
            direction: Axis.vertical,
            center: const Text("Loading......."),
          ),
        ),
      ),
    );
  }
}