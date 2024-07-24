
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutterprogram/Hive%20Adapter/Databasehive/databasehive.dart';
import 'package:flutterprogram/Hive%20Adapter/USERMODEL/usermodel1.dart';
import 'package:get/get.dart';

void main(){
  runApp(MaterialApp(
    home: hiveregistr(),
    debugShowCheckedModeBanner: false,
  ));
}

class hiveregistr extends StatefulWidget {
  const hiveregistr({super.key});

  @override
  State<hiveregistr> createState() => _hiveregistrState();
}

class _hiveregistrState extends State<hiveregistr> {

  TextEditingController passhive = TextEditingController();
  TextEditingController Userhive = TextEditingController();
  TextEditingController confirmpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 60,),
        
              TextField(
                controller: Userhive,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username",
                  labelText: "Username",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
                ),
              ),
        
              SizedBox(height: 60,),
              TextField(
                controller: passhive,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
                ),
              ),
              SizedBox(height: 60,),
              TextField(
                controller: confirmpass,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: " Confirm Password",
                    labelText: "  Confirm Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
                ),
              ),
              SizedBox(height: 60,),
        
              ElevatedButton(onPressed: (){
                emailvalid();
              },
                  child:Text("Submit"))
        
            ],
          ),
        ),
      ),


    );
  }
  void emailvalid()async{

    final email = Userhive.text.trim();
    final pass = passhive.text.trim();
    final cpass = confirmpass.text.trim();

   final emailvailidationresult = EmailValidator.validate(email);

   if(email != "" && pass != "" && cpass != ""){
     if(emailvailidationresult == true){

       final passvalidresult = checkpass(pass, cpass);
       if(passvalidresult == true){

         final user = User(email: email, Password: pass);
         await DBFunction.instance.userSignUp(user);
         Get.back();
         Get.snackbar("Success", "Created Account");

       }
     }else{

       Get.snackbar("Error","Enter valid email");

     }
   }else{
     Get.snackbar("error","Feild cannot empty");

   }

  }

  bool checkpass(String pass,String cpass){

    if(pass == cpass ){
      if(pass.length<6){
        Get.snackbar("Error ", "password must be greaterthan 6");
        return false;
      }
      else{

        return true;
      }
    } else{
      Get.snackbar("Error", "password does not match");
      return false;

  }

}}
