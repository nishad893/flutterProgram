



import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutterprogram/Sharedprefarance/loginpage.dart';

import 'package:shared_preferences/shared_preferences.dart';

main(){
  runApp(DevicePreview(builder: (context)=>
  MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: homeshare(),
  )));
}

class homeshare extends StatefulWidget {
  const homeshare({super.key});

  @override
  State<homeshare> createState() => _homeshareState();
}

class _homeshareState extends State<homeshare> {
  late SharedPreferences data;
  String? username;

  @override
  void initState() {
    fetchome();
    // TODO: implement initState
    super.initState();
  }
  void fetchome()async{
    data= await SharedPreferences.getInstance();
    setState(() {

      username = data.getString("username")!;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          Container(
            child: Column(
              children: [
                Center(child: Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Text("Hi Welcome $username"),
                )),

                ElevatedButton(onPressed: (){
                  data.setBool("newuser", true);
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Login5()));
                }, child:
                 Text("logout"),)

              ],
            ),
          ),
        );


  }
}
