import 'package:sqflite/sqflite.dart' as sql;

class Sqlhelper {

  static Future<sql.Database> myData() async {
    return sql.openDatabase('userData.db', version: 1,
        onCreate: (sql.Database database, int version) async {
          await createTable(database);
        });
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE userData(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT,
    password TEXT NOT NULL
    )""");
  }

  ///create new user
  static Future<int> AddNewUser(String name,String email,String password)async{
    final db=await Sqlhelper.myData();
    final data={'name': name,'email': email,'password':password};
    final id=db.insert('userData',data);
    return id;
  }

  ///check user existance
  static Future<List<Map>> userFound(String eemail)async{
    final db=await Sqlhelper.myData();
    final data=await db.rawQuery(
        "SELECT * FROM userData WHERE email ='$eemail' ");
    if(data.isNotEmpty){
      return data;
    }
    return data;
  }

  static Future<List<Map>> checkLogin(String email, String password)async{
    final db=await Sqlhelper.myData();
    final data=await db.rawQuery(
        "SELECT * FROM userData WHERE email ='$email' AND password='$password' ");
    if(data.isNotEmpty){
      return data;
    }
    return data;
  }

  static Future<List<Map>> getAll() async{
    final db=await Sqlhelper.myData();
    final data=db.rawQuery("SELECT * FROM user");
    return data;
  }

  static Future<void>DeleteUser(int id)async{
    final db=await Sqlhelper.myData();
    db.delete('user',where: 'id=?',whereArgs: [id]);
  }
}
