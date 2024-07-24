import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ReorderableListExample(),
  ));
}

class ReorderableListExample extends StatefulWidget {
  const ReorderableListExample({super.key});

  @override
  State<ReorderableListExample> createState() => _ReorderableListExampleState();
}

class _ReorderableListExampleState extends State<ReorderableListExample> {

  // list of tiles

  List<String> MyTile=[

    'A',
    'B','C','D','E','F','G','H','I','J','K','L','M'
    ,'N','O','P','Q','R','S','T','U','V','W','X','Y','Z' , ];
//reorderable list
  void  updatemyTiles(int oldIndex,int newIndex){
    setState(() {
      //adjusment for moving the tile to bottom
      if(oldIndex <newIndex){
        newIndex--;
      }

      //get tile we moving

      final tile=MyTile.removeAt(oldIndex);

      //place the tile in new position
      MyTile.insert(newIndex, tile);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Reorderable list"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ReorderableListView(
          padding: EdgeInsets.symmetric(vertical: 16),
          children: [

            for(final tile in MyTile)
              Card(
                color: Colors.orangeAccent,
                margin: EdgeInsets.symmetric(vertical: 4),
                key: Key(tile),
                child: ListTile(
                  selectedTileColor: Colors.green,
                  key: ValueKey(tile),
                  title: Text(tile),
                ),
              ),
          ], onReorder: (oldIndex, newIndex) =>updatemyTiles(oldIndex, newIndex) ,),
      ),
    );
  }
}
