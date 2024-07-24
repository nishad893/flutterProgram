


import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: seperatedmonth(),
  ));
}

class seperatedmonth extends StatefulWidget {
  const seperatedmonth({super.key});

  @override
  State<seperatedmonth> createState() => _seperatedmonthState();
}

class _seperatedmonthState extends State<seperatedmonth> {
  var month=["january","february","march","april","may","june","july","August","september","october","navember","december"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(

         child: ListTile(
           leading: Text(month[index]),
         ),
        );

      }, separatorBuilder: (context,index){
        if(index % 4==0){
          return Card(
            color: Colors.red,
            child: Text("Advertisment"),
          );

        }else{
          return SizedBox();
        }
      },itemCount: month.length,),
    );
  }
}
