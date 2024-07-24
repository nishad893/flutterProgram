


import 'package:flutter/material.dart';
import 'package:flutterprogram/SharedprefWithRegistr/loginpage.dart';
import 'package:flutterprogram/customlist/datapassing/dummydata.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepshare extends StatefulWidget {
  const homepshare({super.key});

  @override
  State<homepshare> createState() => _homepshareState();
}

class _homepshareState extends State<homepshare> {
  late SharedPreferences regdata;

  late String name;

  @override
  void initState() {
    name4();

    super.initState();
  }

  void name4() async {
    regdata = await SharedPreferences.getInstance();
    setState(() {
      name = regdata.getString('name')!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi $name welcome"),
      ),
      body: Container(
        child: Column(
          children: [
            ListView(
              children: dummydata.map((product) =>
                  GestureDetector(
                    child: Center(
                      child: Column(
                        children: [
                          Image(image: AssetImage("${product['image']}")),
                          Text("${product['name']}")

                        ],
                      ),
                    ),
                    onTap: () => getproduct(context, product['id']),

                  )).toList(),
            ),
            ElevatedButton(onPressed: () {
              regdata.setBool("newuser", true);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginshare2()));
            }, child:
            Text("Logout"))
          ],
        ),
      ),
    );
  }

  getproduct(BuildContext context, product) {
    Navigator.pushNamed(context, 'prodectdetails', arguments: product);
  }
}
