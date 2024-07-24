import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(MaterialApp(
    home: Homeenjoy(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homeenjoy extends StatelessWidget {
  const Homeenjoy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            "ENJOY READING",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black,fontStyle: FontStyle.italic),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Stack(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 30,
                      width: 370,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(60)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Search for Books",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Container(
                      height: 170,
                      width: 370,
                      decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("Assets/IMAGE/bookbackground.jpeg",),fit: BoxFit.fill),
                          // color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(20),



                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 25),
                            child: Text(
                              "Child Picture \n Book",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 115),
                            child: Container(
                              alignment: Alignment.center,
                              height: 27,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                "Click to enter",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 90,
                    width: 370,
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.book,
                                  size: 35,
                                ),
                                Text(
                                  "book list",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 52,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                CupertinoIcons.globe,
                                size: 35,
                              ),
                              Text(
                                "space",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 52,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.widgets_rounded,
                                size: 35,
                              ),
                              Text(
                                "more",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 52,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                CupertinoIcons.book,
                                size: 35,
                              ),
                              Text(
                                "book list",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 360,
                    child: Row(
                      children: [
                        Container(
                          height: 27,
                          width: 5,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "RECOMMEND",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          "see all",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          CupertinoIcons.circle,
                          color: Colors.grey,
                          size: 15,
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Container(
                      height: 150,
                      width: 370,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 150,
                          ),
                          Container(

                            child: Stack(
                              children: [

                              Column(
                                children: [
                                  Text(
                                    "The Giant Kingdom",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                        "Extremly recording / growing \nmotivationing"),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 100, top: 30),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.yellow[500],
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Text(
                                        "Borrow >>",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                      Padding(
                        padding: const EdgeInsets.only(top: 105),
                        child: Container(
                            height: 30,
                            width: 110,
                            child: Row(
                              children: [
                                Text(
                                  "261",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text("remaining")
                              ],
                            ),
                        ),
                      )  ]  ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    height: 150,
                    width: 370,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 150,
                        ),
                        Container(
                          child: Stack(
                            children: [ Column(
                              children: [
                                Text(
                                  "The Giant Kingdom",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                      "Extremly recording / growing \nmotivationing"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 100, top: 30),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow[500],
                                        borderRadius: BorderRadius.circular(30)),
                                    child: Text(
                                      "Borrow >>",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                              Padding(
                                padding: const EdgeInsets.only(top: 105,left: 8),
                                child: Container(
                                  height: 30,
                                  width: 110,
                                  child: Row(
                                    children: [
                                      Text(
                                        "261",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.redAccent),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text("remaining")
                                    ],
                                  ),
                                ),
                              )
                            ] ),
                        )
                      ],
                    ),
                  ),

                  //
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 370),
                child: Container(

                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage("Assets/IMAGE/giantKIngdom.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 550),
                child: Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage("Assets/IMAGE/giantKIngdom.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),





                  ),
                ),
              ),
            ]),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.yellow,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: Colors.yellow,
                ),
                label: "borrow"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.yellow,
                ),
                label: "account"),
          ],
        ));
  }
}
