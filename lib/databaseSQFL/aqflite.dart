
import 'package:flutter/material.dart';

class sqfminscrn extends StatefulWidget {
  const sqfminscrn({super.key});

  @override
  State<sqfminscrn> createState() => _sqfminscrnState();
}

class _sqfminscrnState extends State<sqfminscrn> {
  var Name = ["Burgers","Dessert","Drinks"];
  var subtitle = ["chicken","Chees cake","juice"];
  var edit =[Icon(Icons.edit)]
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
        Text("Todo List"),),

      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          
          child: ListTile(
            title: Text(Name[index],),
            subtitle: Text(subtitle[index]),
            trailing: ,
          ),
        );
      }),
      
      
      
      
      
    );
  }
}
