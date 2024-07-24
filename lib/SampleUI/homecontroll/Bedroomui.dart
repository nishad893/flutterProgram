


import 'package:flutter/material.dart';
main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Bedroom(),
  ));
}

class Bedroom extends StatefulWidget {
  const Bedroom({super.key});

  @override
  State<Bedroom> createState() => _BedroomState();
}

class _BedroomState extends State<Bedroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.orange[700],
              borderRadius: BorderRadius.circular(30)
            ),
            height: 270,
            width: double.infinity,
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.orange[700],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 50),
            child: Icon(Icons.arrow_back,color: Colors.white70,size: 30,),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 90),
            child: Text("Bed Room",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32,top: 140),
            child: Text("3 Family Members Have Access",style: TextStyle(color: Colors.white70),),
          ),

          Padding(
            padding: const EdgeInsets.only(left:350,top: 110),
            child: Icon(Icons.settings_outlined,color: Colors.white70,size: 30,),
          )
          
        ],
      ),
    );
  }
}
