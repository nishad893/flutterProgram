
import 'package:flutter/material.dart';
import 'package:flutterprogram/Hive%20Adapter/Databasehive/databasehive.dart';
import 'package:flutterprogram/Hive%20Adapter/USERMODEL/usermodel1.dart';
import 'package:flutterprogram/Hive%20Adapter/hiveregistr.dart';
import 'package:flutterprogram/Hive%20Adapter/homeadapthive.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive_flutter/adapters.dart';
main()async{

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.openBox<User>('user');


  runApp(GetMaterialApp(
    home: adaptlogin(),
    debugShowCheckedModeBanner: false,
  ));
}

class adaptlogin extends StatefulWidget {
  const adaptlogin({super.key});

  @override
  State<adaptlogin> createState() => _adaptloginState();
}

class _adaptloginState extends State<adaptlogin> {
      TextEditingController uname=TextEditingController();
      TextEditingController Pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login "),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 70,),
            TextField(
              controller: uname,
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: "Username",
              labelText: "Username",

              border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
            ),),
            SizedBox(height: 70,),
            TextField(
              controller: Pass,
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
                hintText: "Password",
                labelText: "Password",

                border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
            ),),

            SizedBox(height: 50,),

            ElevatedButton(onPressed: ()async{

              final userlist = await DBFunction.instance.getUser();
              findUser(userlist);


            },
                child:Text("login")),

            SizedBox(height: 10,),

            TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>hiveregistr()));
            },
                child:Text("Not a User?Create Account"))


          ],
        ),
      ),

    );
  }
      Future<void>  findUser(List<User> userlist) async {
        final email = uname.text.trim();
        final password = Pass.text.trim();

        bool userFound = false;
        final validate = await validatelogin(email , password);




        if (validate == true ){
          await Future.forEach(userlist, (user){
            if(user.email == email && user.Password == password){
              userFound = true;
            }else{
              userFound = false;
            }
          });
          if(userFound == true){
            Get.offAll( ()=> Homeadapt(email : email));
            Get.snackbar("Success", "Login success",backgroundColor: Colors.green);
          }else {
            Get.snackbar("Error", "Incorrect email/password",backgroundColor: Colors.red);
          }
        }
      }

      Future<bool> validatelogin(String email, String password) async {
        if(email != "" && password != ""){
          return true;
        }else {
          Get.snackbar("title", "message");
        }
        return false;
      }
}
