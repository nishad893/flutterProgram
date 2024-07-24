



import 'package:flutterprogram/Hive%20Adapter/USERMODEL/usermodel1.dart';
import 'package:hive/hive.dart';

class DBFunction{

  DBFunction.internal();


  static DBFunction instance = DBFunction.internal();

  factory DBFunction(){
    return instance;



  }



  Future<void>userSignUp(User user)async{
    final db = await Hive.openBox<User>('user');

    db.put(user.id, user);

  }

  Future<List<User>>getUser()async{
    final db = await Hive.openBox<User>('user');
    return db.values.toList();
  }



}