import 'package:flutter/material.dart';
import 'package:flutterprogram/saqlexmpl2/Regwithdatabase.dart';
import 'package:flutterprogram/saqlexmpl2/homesq2.dart';
import 'package:flutterprogram/saqlexmpl2/sqldatabase.dart';

import 'package:sizer/sizer.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Log(),
  ));
}

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _RegisterState();
}

class _RegisterState extends State<Log> {
  var email = TextEditingController();
  var pass = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Expanded(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Melodrama"),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 25, left: 20, right: 20),
                    child: Expanded(
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          labelText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 25, left: 20, right: 20),
                    child: Expanded(
                      child: TextFormField(
                        validator: (pass1) {
                          if (pass1!.isEmpty || pass1.length < 6) {
                            return "Password should be greater than 6";
                          } else {
                            return null;
                          }
                        },
                        controller: pass,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: 40.h,
                    child: ElevatedButton(
                      // style: ButtonStyle(
                      //     shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          final valid = formkey.currentState!.validate();
                          if (valid) {
                            logincheck(email.text, pass.text);
                          }


                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Homesq2(data: data)));
                        },
                        child: Text("Login")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Expanded(
                    child: Row(
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text("Register"))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  void logincheck(String email, String password) async {
    if (email == 'admin@gmail.com' && password == '123456') {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => Adminpg()));
    } else {
      var data = await Sqlhelper.checkLogin(email, password);
      if (data.isNotEmpty) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Homesq2(data: data),
            ));
        print("Success");
      }
      else if (data.isEmpty) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Log(),
            ));
      }
    }
  }
}




