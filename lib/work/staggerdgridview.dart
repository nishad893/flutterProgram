import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: Stagger(),
            debugShowCheckedModeBanner: false,
          )));
}

class Stagger extends StatelessWidget {
  const Stagger({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,

      child: SafeArea(

        child: Scaffold(

          appBar: AppBar(

            title: Text("Staggered RecyclerView",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),backgroundColor: Colors.blueAccent,),
            backgroundColor: Color(0xffA69E9E),
            body: SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                children: [
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 5, right: 5),
                              child: Image(
                                  image:
                                      AssetImage("Assets/IMAGE/HAVASU 102.jpeg")),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Havasu Falls",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 4,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 5, right: 5),
                              child: Image(
                                image: AssetImage(
                                  "Assets/IMAGE/Trondheim 2024-05-30 162248.png",
                                ),
                                height: 330,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Trondheim",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 4,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                child: Image(
                                  image: AssetImage(
                                      "Assets/IMAGE/algarve-portugal-heart-shaped-rock-575x810.jpg"),
                                  height: 330,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Portugal",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 5, right: 5),
                              child: Image(
                                image: AssetImage(
                                    "Assets/IMAGE/ROKEYMONTAINORIGINAL.webp"),
                                height: 130,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Text(
                              "Rockey Mountain National\n Park",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 5, right: 5),
                              child: Image(
                                image: AssetImage("Assets/IMAGE/SNOWWATER.jpg"),
                                height: 130,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Norway",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 5, right: 5),
                              child: Image(
                                image: AssetImage("Assets/IMAGE/SEATREE.webp"),
                                height: 130,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Mahahual",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
