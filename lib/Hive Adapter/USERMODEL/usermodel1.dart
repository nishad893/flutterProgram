

import 'package:hive/hive.dart';

part 'usermodel1.g.dart';

@HiveType(typeId:1)


class User{

  @HiveField(0)

  final String email;
  @HiveField(1)
  final String Password;

  @HiveField(2)

  String? id;

  User({required this.email, required this.Password}){
    id = DateTime.now().microsecondsSinceEpoch.toString();
  }
}