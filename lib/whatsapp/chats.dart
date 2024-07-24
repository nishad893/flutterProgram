import 'package:flutter/material.dart';

class chats extends StatefulWidget {
  const chats({super.key});

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "lib/WhatsApp Image  chats 2024-06-03 at 10.40.44_c1257c6a.jpg"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
