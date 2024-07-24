
import 'package:flutter/material.dart';
import 'package:flutterprogram/customlist/datapassing/dummydata.dart';

class prodectdetails extends StatefulWidget {
  const prodectdetails({super.key});

  @override
  State<prodectdetails> createState() => _prodectdetailsState();
}

class _prodectdetailsState extends State<prodectdetails> {
  @override
  Widget build(BuildContext context) {

    final id =  ModalRoute.of(context)?.settings.arguments;
    final product= dummydata.firstWhere((product) =>product ['id']==id);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            width: 100,
          ),
          Container(
            child: Image(image: AssetImage(product["image"]),),

          ),
          Text(product["name"]),
          Text(product["description"]),
          Text(product["price"]),
        ],
      ),


    );
  }
}
