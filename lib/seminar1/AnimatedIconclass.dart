import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedIcon].

void main() {
  runApp(const AnimatedIconApp());
}

class AnimatedIconApp extends StatelessWidget {
  const AnimatedIconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
        builder: (context) {
          return MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorSchemeSeed: const Color(0xff6750a4),
              useMaterial3: true,
            ),
            home: const Scaffold(
              body: AnimatedIconExample(),
            ),
          );
        }
    );
  }
}

class AnimatedIconExample extends StatefulWidget {
  const AnimatedIconExample({super.key});

  @override
  State<AnimatedIconExample> createState() => _AnimatedIconExampleState();
}

class _AnimatedIconExampleState extends State<AnimatedIconExample>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )
      ..forward()
      ..repeat(reverse: true);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: animation,
          size: 72.0,
          semanticLabel: 'Show menu',
        ),
      ),
    );
  }
}
