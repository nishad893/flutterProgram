import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: registretion(),
//   ));
// }

class registretion extends StatefulWidget {
  const registretion({super.key});

  @override
  State<registretion> createState() => _registretionState();
}

class _registretionState extends State<registretion> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 330),
              child: Text(
                "Registration",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Full Name",
                    labelText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
              child: TextField(
                obscureText: show,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Minimun 8 character",
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (show) {
                              show = false;
                            } else {
                              show = true;
                            }
                          });
                        },
                        icon: Icon(show == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
              child: TextField(
                obscureText: show,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    labelText: "Confirm password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (show) {
                            show = false;
                          } else {
                            show = true;
                          }
                        });
                      },
                      icon: Icon(show == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  maximumSize: Size(200, 60)),
              onPressed: () {},
              child: Text("Sign up"),
            )
          ],
        ),
      ),
    );
  }
}
