


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprogram/SharedprefWithRegistr/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Registrashare(),));
}

class Registrashare extends StatefulWidget {
  const Registrashare({super.key});

  @override
  State<Registrashare> createState() => _RegistrashareState();
}

class _RegistrashareState extends State<Registrashare> {
    late SharedPreferences regdata;
 final name1=TextEditingController();
 final username1=TextEditingController();
 final passw1=TextEditingController();


  void dispose(){

    name1 .dispose();
    username1.dispose();
    passw1.dispose();

  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Registration"),
     ),

     body:SingleChildScrollView(
       child: Container(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 250,left: 30,right: 30),
               child: TextField(
                 controller: name1,
                 decoration: InputDecoration(
                   hintText: "Full Name",
                   labelText: "Name",
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
               child: TextField(
                 controller: username1,
                 decoration: InputDecoration(
                     hintText: "Username",
                     labelText: "Username",
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
               child: TextField(
                 controller: passw1,
                 decoration: InputDecoration(

                     hintText: "min 6 Charachter",
                     labelText: "Password",
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
               child: TextField(
                 decoration: InputDecoration(
                     hintText: "Confirm Password",
                     labelText: "Confirm Password",
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 50),
               child: ElevatedButton(onPressed: (){
                 registr();
               }, child:
               Text("Submit")),
             )
           ],
         ),
       ),
     ) ,
   );
  }
  void registr()async{
    regdata = await SharedPreferences.getInstance();
    String name = name1.text;
    String username = username1.text;
    String passw = passw1.text;

    if(username != '' && passw != ''){

      regdata.setString("username", username);
      regdata.setString("passw", passw);
      regdata.setString("name", name);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginshare2()));
      print("registration success");

    }

  }
}

