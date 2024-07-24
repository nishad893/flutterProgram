


  import 'package:flutter/material.dart';

class custmwidget extends StatelessWidget {
    final Text text;
    final Text ?subtitle;
    final Image img;
    final Color clr;
    VoidCallback onpress;
    custmwidget({ required this.text,required this.subtitle,required this.img,required this.clr,required this.onpress});


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Card(
          color: clr,
          child: ListTile(
            leading: img,
            title: text,
            subtitle: subtitle,
          ),
        ),

      );
    }
  }
