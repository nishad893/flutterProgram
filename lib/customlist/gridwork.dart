



import 'package:flutter/material.dart';
import 'package:flutterprogram/customlist/grid.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridwork(),
  ));
}

class Gridwork extends StatelessWidget {
   var name=["banu"];
   var image=["Assets/IMAGE/woman-590490_640.jpg"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
        return Card(
          child: Column(
            children: [
              Image(image: AssetImage("Assets/IMAGE/woman-590490_640.jpg")),
              Text(name[index]),

            ],
          ),
        );
      },itemCount: name.length,),
    );
  }
}
