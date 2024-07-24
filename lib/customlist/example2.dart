

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: example2(),));
}

class example2 extends StatelessWidget {
  const example2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:6 ,child:  Scaffold(

        appBar: AppBar(backgroundColor: Colors.green,
          title: Text("GeeksForGeeks",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          bottom: TabBar(
            tabs: [
              Column(
                children: [
                  Tab(icon:Icon(Icons.home_filled),),
                  Text("Hpme"),
                ],

              ),
              Column(
                children: [
                  Tab(icon: Icon(Icons.account_box),),
                  Text("Account",style: TextStyle(fontSize: 13),),
                ],
              ),
              Column(
                children: [
                  Tab(icon: Icon(Icons.alarm),),
                  Text("Alarm"),
                ],
              ),
              Column(
                children: [
                  Tab(icon: Icon(Icons.home_filled),),
                  Text("Home"),
                ],
              ),
              Column(
                children: [
                  Tab(icon: Icon(Icons.account_box),),
                  Text("Account",style: TextStyle(fontSize: 13),),
                ],
              ),
              Column(
                children: [
                  Tab(icon: Icon(Icons.alarm),),
                  Text("Alarm")
                ],
              )

            ],
            indicatorColor: Colors.white,

          ),

        ),
      ),
    );
  }
}
