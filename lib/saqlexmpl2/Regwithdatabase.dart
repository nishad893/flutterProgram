import 'package:flutter/material.dart';

import 'package:flutterprogram/saqlexmpl2/loginsq2.dart';
import 'package:flutterprogram/saqlexmpl2/sqldatabase.dart';
import 'package:sizer/sizer.dart';




main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Register(),
  ));
}

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formkey1 = GlobalKey<FormState>();
  var user = TextEditingController();
  var email = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void Adduser(String name,String email,String password)async{
      var id=await Sqlhelper.AddNewUser(name, email, password);
      if(id!=null){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Log()));
      }
    }

    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formkey1,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Welcome Aboard",
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Melodrama"),
                    ),
                    Text("SignUp to access your account"),
                    Padding(
                        padding:
                        EdgeInsets.only(top: 5.h, left: 5.w, right: 5.w),
                        child: Expanded(
                          child: TextField(
                            controller: user,
                            decoration: InputDecoration(
                              labelText: "Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        )),
                    Padding(
                        padding:
                        EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
                        child: Expanded(
                          child: TextField(
                            controller: email,
                            decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        )),
                    Padding(
                        padding:
                        EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
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
                        padding:
                        EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
                        child: Expanded(
                          child: TextFormField(
                            validator: (pass2) {
                              if (pass2!.isEmpty || pass2.length < 6) {
                                return "Password should be greater than 6";
                              } else if (pass.text != cpass.text) {
                                return "Password not matched";
                              } else {
                                return null;
                              }
                            },
                            controller: cpass,
                            decoration: InputDecoration(
                              labelText: "Confirm Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Container(
                        width: 40.h,
                        child: ElevatedButton(
                            // style: ButtonStyle(
                            //     shape: WidgetStatePropertyAll(
                            //         RoundedRectangleBorder(
                            //             borderRadius:
                            //             BorderRadius.circular(10)))),
                            onPressed: () async {
                              final valid1 = formkey1.currentState!.validate();
                              if (valid1) {
                                String eemail = email.text;
                                var data = await Sqlhelper.userFound(eemail);
                                if (data.isNotEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text("User already exist")));
                                }else{
                                  Adduser(user.text, email.text, pass.text);
                                }
                              }
                            },
                            child: Text("Register")),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0.h, left: 25.w),
                      child: Expanded(
                        child: Row(
                          children: [
                            Text("Already have an account?"),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Log()));
                                },
                                child: Text("Login"))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}