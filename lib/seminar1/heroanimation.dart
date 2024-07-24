
import 'package:flutter/material.dart';
import 'package:flutterprogram/seminar1/heroanimateddetails2.dart';
import 'package:flutterprogram/seminar1/heroanimdetails.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Heroanimationeg(),
  ));
}

class Heroanimationeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        leading: Icon(Icons.arrow_back),
        title: Center(
            child: Text(
              "Hero Animation",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        actions: [Icon(Icons.menu)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: ListTile(
                    leading: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context) => Detailpage1(),
                        ),);
                      } ,
                      child: Hero(
                          tag: "myAnimation",
                          child: CircleAvatar(
                            backgroundImage:
                            AssetImage("assets/image/Ferrari.webp"),
                          )),
                    ),
                    title: Text(
                      "Ferrari",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "₹ 5.40 Cr",
                    ),
                    trailing: Icon(Icons.directions_car_filled_outlined),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context) => Detailspage2(),
                        ),);
                      },
                      child: Hero(
                          tag: "myAnimation",
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/image/1-McLaren-Artura-Spider.jpeg"),
                          )),
                    ),
                    title: Text(
                      "Mclaren Artura",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "₹ 5.83 Crore",
                    ),
                    trailing: Icon(Icons.directions_car_filled_outlined),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
