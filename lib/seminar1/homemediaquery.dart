import 'package:flutter/material.dart';
import 'package:flutterprogram/seminar1/bigscreenmediaquaery.dart';
import 'package:flutterprogram/seminar1/mobilemediaquery.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),));
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var devicewidth = MediaQuery.of(context).size.width;
    if(devicewidth < 600) {
      return MobileScreen();
    }else {
      return BigScreen();

    }
  }
}

