import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Phone",
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
          ),
          body: ListView(
            children: [
              Card(
                color: Colors.greenAccent,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("Assets/IMAGE/woman-590490_640.jpg"),
                  ),
                  title: Text("abu"),
                  subtitle: Text("679487894987"),
                  trailing: Icon(Icons.call),
                ),
              ),
              Card(
                color: Colors.red,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("Assets/IMAGE/woman-590490_640.jpg"),
                  ),
                  title: Text("Ahal"),
                  subtitle: Text("679487894987"),
                  trailing: Icon(Icons.call),
                ),
              )
            ],
          )),
    );
  }
}
