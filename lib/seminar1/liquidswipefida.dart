import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>
      MaterialApp(useInheritedMediaQuery: true,
        home: LiquidswipeEx() ,)));
}
class LiquidswipeEx extends StatefulWidget {


  @override
  State<LiquidswipeEx> createState() => _LiquidswipeExState();
}

class _LiquidswipeExState extends State<LiquidswipeEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: page,
        enableLoop: true,
        waveType:WaveType.liquidReveal ,
        fullTransitionValue: 300,
        enableSideReveal: true,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        positionSlideIcon: 0.5,

      ),
    );
  }
} final page=[
  Container(color: Colors.red,),
  Container(color: Colors.yellow,),
  Container(color: Colors.blue,)


];

