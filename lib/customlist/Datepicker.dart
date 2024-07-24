

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Datepickereg(),));
}

class Datepickereg extends StatefulWidget {

  @override
  State<Datepickereg> createState() => _DatepickeregState();
}

class _DatepickeregState extends State<Datepickereg> {
  DateTime selectdate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextField(
            controller: TextEditingController(
                text: "${selectdate.toLocal()}".split("pattern")[0]),
            readOnly: true,
            onTap: () => selecteddate(context),
            decoration: InputDecoration(hintText: "select date",
              suffixIcon: Icon(Icons.calendar_month),
            ),
          )),
    );
  }

  Future<void> selecteddate(BuildContext context) async {
    final DateTime? picktime = await showDatePicker(
        context: context, firstDate: DateTime(2018), lastDate: DateTime(2030));
    if(picktime!=null && picktime!=selectdate){
      setState(() {
        selectdate=picktime;
      });
    }
  }
}