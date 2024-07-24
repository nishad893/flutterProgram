import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:animated_icon/animated_icon.dart';

import '1_1.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
        builder: (context) {
          return MaterialApp(useInheritedMediaQuery: true,
            title: 'Animated Icon',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(title: 'Animated Lottie Icon'),
          );
        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isRepeat = false;
  @override
  void initState() {
    _tabController = TabController(length: IconType.values.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
              child: TabBar(
                tabAlignment: TabAlignment.start,
                dividerColor: Colors.transparent,
                isScrollable: true,
                tabs: IconType.values.map((page) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "page.spacedCapitalizedString,",
                      style: const TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                controller: _tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: IconType.values.map((page) {
                  return AnimateIconScreen(
                    iconType: page,
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }
}