
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox("task_box");



  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoUI(),
  ));
}

class TodoUI extends StatefulWidget {

  @override
  State<TodoUI> createState() => _TodoUIState();
}

class _TodoUIState extends State<TodoUI> {
  final tbbox = Hive.box("task_box");

  final task = Hive.box("task_box");




  bool isLoading = true;

  List<Map<String, dynamic>> note_from_db = []; // to store data from sqflite

  @override
  void initState() {
    //refreshing ui
    refreshdata();
    super.initState();
  }

  Future<void>CreatTask(Map<String,dynamic>task)async{
    await tbbox.add(task);
  }
  void loadtask(){
    final data= tbbox.keys.map((id){
      final value = tbbox.get(id);
      return {
        'key' : id , 'title' :value[title], note : value[title]
      };

    }).toList();
  }


  void refreshdata() async {
    // final datas = await SQLhelper.readNotes(); // read data from sqflite

    setState(() {
      // note_from_db = datas; //add the datas read from sqflite into empty list
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.yellow[100],
        title: Text("Sqflite Todo App"),
      ),
      body:task.isEmpty ? const





          Center(
        child: Text("No Data"),
      )
     : ListView.builder(
          itemCount: note_from_db.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.orange[200],
              child: ListTile(
                title: Text(note_from_db[index]['title']),
                subtitle: Text(note_from_db[index]['note']),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: () {
                      shoform(note_from_db[index]['id']);

                    }, icon: const Icon(Icons.edit)),
                    IconButton(onPressed: () {
                      deleteNote(note_from_db[index]['id']);
                    }, icon: Icon(Icons.delete)),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => shoform(null),
        child: Icon(Icons.add),
        backgroundColor: Colors.purpleAccent.shade400,
      ),
    );
  }

  final title = TextEditingController();
  final note = TextEditingController();

  void shoform(int? id) async {
    if (id != null) {
      final existingNote = note_from_db.firstWhere((note) => note["id"] == id);
      title.text = existingNote['title'];
      note.text = existingNote['note'];
    }


    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) =>
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
                bottom: MediaQuery
                    .of(context)
                    .viewInsets
                    .bottom + 120,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: title,
                    decoration: InputDecoration(
                        hintText: 'Title',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: note,
                    decoration: InputDecoration(
                        hintText: "content",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (id == null) {

                      }
                      if (id != null) {
                        await updateNote(id);
                      }
                      title.text = "";
                      note.text = "";
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'Add' : 'Update'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent.shade400),
                  )
                ],
              ),
            ));
  }

  Future addNote() async {
    // await SQLhelper.createNotes(title.text, note.text);
    refreshdata();
  }

  Future<void> updateNote(int id) async {
    // await SQLhelper.updateNote(id, title.text, note.text);
    refreshdata();
  }

  Future<void> deleteNote(int id) async {
    // await SQLhelper.deletenote(id);
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Note Deleted")));
    refreshdata();
  }
}