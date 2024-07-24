import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Givennamelist(),
  ));
}

class Givennamelist extends StatefulWidget {
  const Givennamelist({super.key});

  @override
  State<Givennamelist> createState() => _GivennamelistState();
}

class _GivennamelistState extends State<Givennamelist> {
  var name = ["ramu", 'baiju', 'jiju', 'abu', 'aju'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Phone",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.custom(
          childrenDelegate:
              SliverChildListDelegate(List.generate(name.length, (index) {
        return Container(
          height: 100,
          width: 100,
          child: Card(
            color: Colors.blue[200],
            child: ListTile(
              title: Text(name[index]),
            ),
          ),
        );
      }))),
    );
  }
}
