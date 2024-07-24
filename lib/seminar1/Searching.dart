import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: searchingEx(),
  ));
}

class searchingEx extends StatefulWidget {
  @override
  State<searchingEx> createState() => _searchingExState();
}

class _searchingExState extends State<searchingEx> {
  TextEditingController controller=TextEditingController();
  var name = ["Apple", "Banana", "Avacado", "kiwi", "Orange", "Mango"];
  var filteredname = <String>[];
  @override
  void initState() {
    filteredname=name;

    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fruits"),
      ),
      body: Column(
        children: [
          TextField(onChanged: (value) {
            filteredsearchview(value);
          },controller: controller,
          ), Expanded(
            child: ListView.builder(
                itemCount: filteredname.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredname[index]),
                  );
                }),
          ),
        ],
      ),
    );
  }

  void filteredsearchview(String value) {
    setState(() {
      filteredname = name
          .where(
              (element) => element.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
}
