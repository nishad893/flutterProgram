


  import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
 main() {
   runApp(DevicePreview(builder: (context) =>
       MaterialApp(
         useInheritedMediaQuery: true,
         home: Datatable(),
         debugShowCheckedModeBanner: false,
       )));
 }
class Datatable extends StatelessWidget {
    const Datatable({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: DataTable(
            columnSpacing: 26,
            dividerThickness: 4,
            horizontalMargin: 10,
            border: TableBorder.all(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(40)
            ),
            columns: [
            DataColumn(label:Text("Name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            DataColumn(label:Text("age",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            DataColumn(label:Text("job",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            DataColumn(label:Text("Salary",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),




          ],

          rows: [
            DataRow(cells: [
              DataCell(Text("Arjun")),
              DataCell(Text("25")),
              DataCell(Text("sales man")),
              DataCell(Text("50000/-")),
            ]),
            DataRow(cells: [
              DataCell(Text("anu")),
              DataCell(Text("25")),
              DataCell(Text("manager")),
              DataCell(Text("40000/-")),
            ])
          ],),
        ),
      );
    }
  }
