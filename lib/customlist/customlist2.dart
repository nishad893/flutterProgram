import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Customlist2(),));
}

class Customlist2 extends StatefulWidget {
  const Customlist2({super.key});

  @override
  State<Customlist2> createState() => _Customlist2State();
}

class _Customlist2State extends State<Customlist2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Phone",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(List.generate(10, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.green[200],
            child: ListTile(
              title: Text(
                "ram",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "3598756412",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        );
      }))),
    );
  }
}
