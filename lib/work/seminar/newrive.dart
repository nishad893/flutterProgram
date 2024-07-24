





import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: firerive(),
  )));
}

class firerive extends StatefulWidget {
  const firerive({super.key});

  @override
  State<firerive> createState() => _fireriveState();
}

class _fireriveState extends State<firerive> {
  StateMachineController? _stateMachineController;
  Artboard? mainArtboard;
  SMIInput<bool>? check;
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    
    rootBundle.load("Assets/Animation/fire_button.riv").
    then((riveByteData) {
      var rivefile = RiveFile.import(riveByteData);
     var mArtBoard = rivefile.mainArtboard; 
      
      _stateMachineController = StateMachineController.fromArtboard(mArtBoard, "State Machine 1");
      
      if(_stateMachineController!=null){
        mArtBoard.addController(_stateMachineController!);
        
        mainArtboard = mArtBoard;
        
        check = _stateMachineController!.findSMI("ON");

        setState(() {

        });

      }
      
      
         });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Fire"),
      ),
      body: mainArtboard!=null ? InkWell(
        onTap: (){
         check!.value = !check!.value;
        }
        ,
        child: SizedBox(
          height: double.infinity,
            width: double.infinity,
        
            child: Rive(artboard: mainArtboard!,fit: BoxFit.fill,)),
      ):Container(

      )
    );
  }
}
