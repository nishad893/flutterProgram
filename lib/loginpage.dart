import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      color: Colors.yellow[300],
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 150, right: 120),
            child: Text(
              "Login page",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "username",
                  prefixIcon: Icon(Icons.person),
                  labelText: "username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 70, left: 70),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                  labelText: "password",
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60))),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  maximumSize: Size(200, 60)),
              onPressed: () {},
              child: Text("login")),
          SizedBox(
            height: 50,
          ),
          TextButton(
              onPressed: () {}, child: Text("Not a user? Creat a n account")),
        ],
      ),
    ));
  }
}
