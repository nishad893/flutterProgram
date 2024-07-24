import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

main() {
  runApp(MaterialApp(
    home: Booklending(),
    debugShowCheckedModeBanner: false,
  ));
}

class Booklending extends StatefulWidget {
  const Booklending({super.key});

  @override
  State<Booklending> createState() => _BooklendingState();
}

class _BooklendingState extends State<Booklending> {

  var index = ["Home","Borrow","Personal"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 80.0,
          title: Text(
            "BOOK LENDING",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
          ),
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 23, color: Colors.black),
            unselectedLabelStyle: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
            indicatorWeight: 6.0,
            tabs: [
              Tab(
                text: "Child",
              ),
              Tab(
                text: "Humanities",
              ),
              Tab(
                text: "Education",
              ),
              Tab(
                text: "Science",
              )
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 140,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        height: 115,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "Assets/IMAGE/giantKIngdom.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130, top: 10),
                      child: Container(
                        height: 60,
                        width: 200,
                        child: Column(
                          children: [
                            Text(
                              "The Giant Kingdom",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 35),
                              child: Text(
                                "Extraordinary reading / Growing\nMotivating story book",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 135, top: 100),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 270, top: 100),
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.yellow[500],
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "Borrow >>",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 140,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        height: 115,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "Assets/IMAGE/Bearswish.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130, top: 10),
                      child: Container(
                        height: 60,
                        width: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 65),
                              child: Text(
                                "Bear's Wish",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 22),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 35),
                              child: Text(
                                "Extraordinary reading / Growing\nMotivating story book",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 135, top: 100),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 270, top: 100),
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.yellow[500],
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "Borrow >>",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 140,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        height: 115,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "Assets/IMAGE/Animaladventure.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130, top: 10),
                      child: Container(
                        height: 60,
                        width: 200,
                        child: Column(
                          children: [
                            Text(
                              "Animal adventures",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 35),
                              child: Text(
                                "Extraordinary reading / Growing\nMotivating story book",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 135, top: 100),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 270, top: 100),
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.yellow[500],
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "Borrow >>",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 140,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        height: 115,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "Assets/IMAGE/Growingstory.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130, top: 10),
                      child: Container(
                        height: 60,
                        width: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 45),
                              child: Text(
                                "Growing Story",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 22),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 35),
                              child: Text(
                                "Extraordinary reading / Growing\nMotivating story book",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 135, top: 100),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 270, top: 100),
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.yellow[500],
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "Borrow >>",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),

            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(


          iconSize: 40,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: Colors.black),
          showSelectedLabels: true,

          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home")
           , BottomNavigationBarItem(icon: Icon(Icons.book_outlined),label: "Borrow")
            ,BottomNavigationBarItem(icon: Icon(Icons.perm_identity_sharp),label: "Personal")
          ],
        ),
      ),
    );
  }
}
