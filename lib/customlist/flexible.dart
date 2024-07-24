



import 'package:flutter/material.dart';

class flex extends StatelessWidget {
  const flex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Flexible(flex: 2,child:
              Container(),
               )
          ],
        ),
      )
    );
  }
}
