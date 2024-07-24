import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedBuilder].

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedBuilderExample(),
  ));
}



class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

/// AnimationControllers can be created with `vsync: this` because of
/// TickerProviderStateMixin.
class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        height: 50,
        width: 50,
        child: Image(image: AssetImage("Assets/IMAGE/img_2.png"),fit: BoxFit.contain,
          width: 30,),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: child,
        );
      },
    );
  }

}



