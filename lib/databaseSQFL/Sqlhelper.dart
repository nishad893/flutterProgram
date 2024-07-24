
import 'package:sqflite/sqflite.dart'as sql;


class Sqlhelper{

  //crerating database

  static Future<sql.Database>mydata()async{
    return sql.openDatabase('myNote.db',version: 1,
    onCreate: (sql.Database database,int version)async{
      await createTable(database);

    });

  }

  //creating Table with notes and column names
static Future<void>createTable(sql.Database database)async{
    await database.execute(""" CREATE TABLE  notes(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT,
    note TEXT,
    createdAt TIMESTAMP NOT NULL DEAFULT CURRENT_TIJMESTAMP)  """);

}

 // ADD DATAS TO TABLE

static Future<int>createNote(String title,String note)async{
    final db=await Sqlhelper.mydata(); //to open database
    final data ={'title':title,'note':note};
    final id = await db.insert("notes",data,
    conflictAlgorithm: sql.ConflictAlgorithm.replace);//to repplace data
    return id;

}

// read all data from table

static Future<List<Map<String,dynamic>>> Readnote()async{
    final db = await Sqlhelper.mydata();//open database
 return db.query('notes',orderBy: 'id');
}

}