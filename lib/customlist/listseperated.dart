import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listseperated(),
  ));
}

class Listseperated extends StatefulWidget {
  const Listseperated({super.key});

  @override
  State<Listseperated> createState() => _ListseperatedState();
}

class _ListseperatedState extends State<Listseperated> {
  var name = ["manu", "aju", "liju", "banu", "ambu"];
  var phone = [
    "9965962653",
    "15479856321",
    "1425896358",
    "5478963254",
    "8956412307"
  ];
  var image = [
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg",
    "Assets/IMAGE/woman-590490_640.jpg"
  ];
  var color=[Colors.black,Colors.yellowAccent,Colors.orangeAccent,Colors.greenAccent,Colors.blue];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          color: color[index],
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
          ),
        );
      }, separatorBuilder: (context,index){
        if(index%3==0){
          return const Card(
          child: Text("hahahaha"),
          );

        }else{
          return SizedBox();
        }

      },itemCount: name.length,),
    );
  }
}
