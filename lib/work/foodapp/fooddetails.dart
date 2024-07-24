import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(

        debugShowCheckedModeBanner: false,
        home: fooddetail(),
      ));
}

class fooddetail extends StatefulWidget {
  const fooddetail({super.key});

  @override
  State<fooddetail> createState() => _fooddetailState();
}

class _fooddetailState extends State<fooddetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:[Container(
                height: 410,
                width: 399,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Assets/IMAGE/img_3.png"),
                        fit: BoxFit.fill),borderRadius: BorderRadius.circular(15)),
              
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25,top: 50),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Icon(CupertinoIcons.arrow_left,color: Colors.grey,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50,left: 340),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Icon(Icons.shopping_bag_sharp,size:18,color: Colors.grey,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
         ]   ),
        
            Padding(
              padding: const EdgeInsets.only(),
              child: Stack(children: [
                 Container(
                  height: 100,
                  width: 399,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20,top: 15),
                         child: Text("Lunch Food",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                       )
                     ],
                   ),
                ),
              ]),
            ),
            Stack(
              children: [Container(
                height: 332,
                width: 399,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
              )],
            )
          ],
        ),
      ),
    );
  }
}
