import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

main() {
  runApp(DevicePreview(
      builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: homehotel(),
            debugShowCheckedModeBanner: false,
          )));
}

class homehotel extends StatelessWidget {
  const homehotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400],
        toolbarHeight: 70,
          title: SizedBox(height: 50,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(CupertinoIcons.line_horizontal_3,color: Colors.black,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,top: 25),
                  child: Text("Type your Location",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Icon(Icons.favorite_border,color: Colors.black,),
                )


              ],
            ),
          ),
        bottom: AppBar(
          backgroundColor: Colors.blue[400],
          title: Container(
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Text(
                  "Search for Something",
                  style: TextStyle(fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body:SingleChildScrollView(child:  Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.hotel,
                            color: Colors.black,
                          ),
                          Text(
                            "Hotel",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.restaurant,
                            color: Colors.black,
                          ),
                          Text(
                            "Restuarent",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(color: Colors.orangeAccent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_cafe,
                            color: Colors.black,
                          ),
                          Text(
                            "Cafe ",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  StaggeredGrid.count(
                    crossAxisCount: 2,
                    children: [
                      StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount:1.9,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "Assets/IMAGE/hotel-pixabay-237371.jpg")),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15),
                                  child: Text(
                                    "Awesome Room near Boddha",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 180),
                                  child: Text(
                                    "Boddha,kathamndu",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.greenAccent[400],
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.greenAccent[400],
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.greenAccent[400],
                                      size: 20,
                                    ),

                                    Icon(CupertinoIcons.star_lefthalf_fill,
                                    color: Colors.greenAccent[400],
                                    size: 15,),
                                    Text("(220 reviews)",style: TextStyle(fontSize: 10),)

                                  ],
                                )
                              ],
                            ),
                          )),
                      StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount:1.9,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "Assets/IMAGE/hotel-pixabay-237371.jpg")),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15),
                                  child: Text(
                                    "Awesome Room near Boddha",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 180),
                                  child: Text(
                                    "Boddha,kathamndu",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.greenAccent[400],
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.greenAccent[400],
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.greenAccent[400],
                                      size: 20,
                                    ),

                                    Icon(CupertinoIcons.star_lefthalf_fill,
                                      color: Colors.greenAccent[400],
                                      size: 15,),
                                    Text("(220 reviews)",style: TextStyle(fontSize: 10),)

                                  ],
                                )
                              ],
                            ),
                          )),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 220,left: 340),
                    child: Container(alignment: Alignment.center,
                      height: 25,
                      width: 39,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Text("\$50",style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 580,left: 340),
                    child: Container(alignment: Alignment.center,
                      height: 25,
                      width: 39,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Text("\$50",style: TextStyle(color: Colors.black),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      ) );
  }
}
