

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: checkedboex(),
  )));

}


class checkedboex extends StatefulWidget {
  const checkedboex({super.key});

  @override
  State<checkedboex> createState() => _checkedboexState();
}

class _checkedboexState extends State<checkedboex> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
          checkColor: Colors.greenAccent,
          value: ischecked,
          onChanged: (bool? value){
            setState(() {
              ischecked=value!;
            });
          },
        ),
      ),

    );
  }
}
