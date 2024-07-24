import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Sampleui(),
  ));
}

class Sampleui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.red, Colors.black, Colors.black],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
        ),),

        child: Column(
          children: [
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/017/396/814/original/netflix-mobile-application-logo-free-png.png',
              width: 150,
              height: 200,
            ),
            Center(
                child: Text(
              "NETFLIX",
              style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.bold, color: Colors.red),
            )),
          ],
        ),
      ),
    );
  }
}
