



import 'package:flutter/material.dart';
import 'package:flutterprogram/SharedprefWithRegistr/homepage.dart';
import 'package:flutterprogram/SharedprefWithRegistr/registtrations.dart';
import 'package:shared_preferences/shared_preferences.dart';
main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginshare2(),
  ));
}


class loginshare2 extends StatefulWidget {
  const loginshare2({super.key});

  @override
  State<loginshare2> createState() => _loginshare2State();
}

class _loginshare2State extends State<loginshare2> {
  final username1=TextEditingController();
  final passw1= TextEditingController();
  late bool newuser;
  late SharedPreferences regdata;

  late String name;
  late String unmae;
  late String passwd;

  @override
  void initState() {
    checkalreadylogin();
    getvalue();

    // TODO: implement initState

  }

  void getvalue()async{
    regdata = await SharedPreferences.getInstance();

    setState(() {
      name =regdata.getString("name")!;
      unmae=regdata.getString("username")!;
      passwd=regdata.getString("passw")!;
    });

  }

  void checkalreadylogin()async{

    regdata = await SharedPreferences.getInstance();
    newuser = (regdata.getBool('newuser')?? true);

    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>homepshare()));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 300,left: 30,right: 30),
                child: TextField(
                  controller: username1,
                  decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Username",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
        
                  ),
        
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
                child: TextField(
                  controller: passw1,
                  decoration: InputDecoration(
                    hintText: "Min 6 charachter",
                    labelText: "Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
        
                  ),
        
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ElevatedButton(
        
                  onPressed: (){
                    String Username = username1.text;
                    String Password = passw1.text;
                    if(Username != '' && Password != '' && Username == unmae && Password == passwd){
                      print("login success");
                      regdata.setBool("newuser", false);

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>homepshare()));
                    }
                  }, child:
                Text("Login"),
        
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top : 30),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Registrashare()));
                }, child:
                Text("Not a user? Creat Account")),
              )
            ],
          ),
        ),
      ),
      
      
    );
  }
}
