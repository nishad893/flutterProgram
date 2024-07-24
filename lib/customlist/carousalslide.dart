import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: carousalslideex(),
          )));
}

class carousalslideex extends StatelessWidget {
  const carousalslideex({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: CarouselSlider(
                items: [
              Image(
                image: AssetImage("Assets/IMAGE/ROKEYMONTAINORIGINAL.webp"),
              ),
              Image(
                image: AssetImage("Assets/IMAGE/SEATREE.webp"),
              ),
              Image(
                image: AssetImage("Assets/IMAGE/SNOWWATER.jpg"),
              ),
              Image(
                image: AssetImage("Assets/IMAGE/Trondheim 2024-05-30 162248.png"),
              )
            ],
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  
                  enlargeCenterPage: true,
                ),)),
      ),
    );
  }
}
