import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprogram/work/homepage5new.dart';
import 'package:flutterprogram/work/ragistrationpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login5(),
  ));
}

class Login5 extends StatefulWidget {
  @override
  State<Login5> createState() => _Login5State();
}

class _Login5State extends State<Login5> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool pass=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[900],
        body: Container(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 30),
                  child: Text(
                    "Login Page",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
                  child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(70),
                            borderSide: BorderSide(color: Colors.white)),
                        suffixStyle: TextStyle(fontSize: 20),
                        hintText: ("User name"),
                        filled: true,
                        fillColor: Colors.white,
                        prefixStyle: TextStyle(fontSize: 20),
                        prefixIcon: Icon(Icons.person),
                        labelText: "User name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      validator: (User) {
                        if (User!.isEmpty &&
                            !User.contains("@")) ;
                        {
                          return "Enter valid Username";
                        }
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: TextFormField(
                    obscureText: pass,
                    obscuringCharacter: "*",
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(

                        suffixIcon: IconButton(onPressed: (){
                          setState(() {


                          if(pass){
                            pass=false;
                          }else {
                            pass = true;
                          }   });                        }, icon: Icon(pass==false?Icons.visibility:Icons.visibility_off)),
                        suffixStyle: TextStyle(fontSize: 20),
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                    validator: (Password){
                      if(Password!.isEmpty|| Password.length<6){
                        return "Icorrect Password";


                      }{
                        return null;
                      }
                    }, ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          maximumSize: Size(250, 80)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: TextButton(
                      onPressed: () {
                        // var valid= formkey.currentState!.validate();
                        // if(valid){
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => registration5()));
                        // }
                       },
                      child: Text(
                        "Not User creat an account?",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
