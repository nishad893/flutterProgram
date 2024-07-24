

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Listviewbuilder() ,));
}

class Listviewbuilder extends StatelessWidget {
  var name=["nishad","badir","hisham","nived"];
  var phone=["1512145","5485","69845","454",];
   var image=["Assets/IMAGE/woman-590490_640.jpg","Assets/IMAGE/woman-590490_640.jpg","Assets/IMAGE/woman-590490_640.jpg","Assets/IMAGE/woman-590490_640.jpg"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view"),),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(color: Colors.blue,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
            title: Text(name[index]),
            subtitle: Text(phone[index]),

            trailing: Icon(Icons.call),
          ),
        );
      },
      itemCount: image.length,),
    );
  }
}
