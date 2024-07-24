import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Customlistview(),
  ));
}

class Customlistview extends StatefulWidget {
  const Customlistview({super.key});

  @override
  State<Customlistview> createState() => _CustomlistviewState();
}

class _CustomlistviewState extends State<Customlistview> {
  var name = ["manu", 'abdu', "andu", "aman", "jabi"];
  var phone = [
    "4528976354",
    "2548976524",
    "5879643589",
    "9876542365",
    "9875634258"
  ];
  var photo = [
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg"
  ];
  var color =[Colors.blue,Colors.yellowAccent,Colors.red,Colors.orangeAccent,Colors.greenAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
      title: Text("Phone",style: TextStyle(fontWeight: FontWeight.bold),),),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index){
        return Card(
          color: color[index],
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(photo[index]),
            ),
            title: Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
          ),
        );
      } ,childCount: name.length)),
    );
  }
}
