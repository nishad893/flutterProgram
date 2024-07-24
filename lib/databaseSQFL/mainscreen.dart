import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterprogram/database/Sqlhelper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Note',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListViewBuilderExample(),
    );
  }
}

class ListViewBuilderExample extends StatefulWidget {

  @override
  _ListViewBuilderExampleState createState() => _ListViewBuilderExampleState();
}

class _ListViewBuilderExampleState extends State<ListViewBuilderExample> {
  bool isLoading= true ;
  List<Map<String,dynamic>> note_from_db=[];
  List<Item> items = [
    Item(title: 'Burgers', subtitle: 'Beef'),
    Item(title: 'Desserts', subtitle: 'pudding'),
    Item(title: 'drinks', subtitle: 'Juice'),
  ];

  TextEditingController title= TextEditingController();
  TextEditingController note = TextEditingController();
  @override
  void initState() {
    Refreashdata();
    super.initState();
  }

  void Refreashdata()async{
    final datas= await Sqlhelper.Readnote();
    setState(() {
      note_from_db=datas;
      isLoading=false;
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Application'),
      ),
      body:
      isLoading ? Center (child : CircularProgressIndicator()):
      ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: ListTile(
              title: Text(items[index].title),
              subtitle: Text(items[index].subtitle),
              trailing: Wrap(
                spacing: 12,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () => _showEditDialog(index),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => _deleteItem(index),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(null),
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }

  void _showEditDialog(int index) {
    title.text = items[index].title;
    note.text = items[index].subtitle;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: title,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: note,
                decoration: InputDecoration(labelText: 'Subtitle'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Save'),
              onPressed: () {
                setState(() {
                  items[index].title = title.text;
                  items[index].subtitle = note.text;
                });
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void _showAddDialog(int ? id) {
    title.clear();
    note.clear();

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: title,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: note,
                decoration: InputDecoration(labelText: 'Subtitle'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: ()async {
                  if(id == null){
                    await addnote();
                  }
                  setState(() {
                    items.add(
                      Item(
                        title: title.text,
                        subtitle: note.text,
                      ),
                    );
                  });
                  Navigator.of(context).pop();
                },
                child: Text(id == null ? 'ADD NOTE': 'UPDATE'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Item {
  String title;
  String subtitle;

  Item({required this.title, required this.subtitle});
}

TextEditingController title= TextEditingController();
TextEditingController note = TextEditingController();

Future addnote()async{
  await Sqlhelper.createNote(title.text, note.text);


}