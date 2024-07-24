




import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
   useInheritedMediaQuery: true,
   home: riveex(),));
}

class riveex extends StatefulWidget {
  const riveex({super.key});

  @override
  State<riveex> createState() => _riveexState();
}

class _riveexState extends State<riveex> {
  var emailController = TextEditingController();
  var passwordController=TextEditingController();
  var riveurl="Assets/Animation/animated_login_character_.riv";
  SMITrigger? failtrgger,successTrigger;
  SMIBool? isHandsUP,isChecking;
  SMINumber? lookNum;
  StateMachineController? stateMachineController;
  Artboard? artboard;





  @override

  void initState(){
    rootBundle.load(riveurl).then((value) {
      final file=RiveFile.import(value);
      final art= file.mainArtboard;
      stateMachineController= StateMachineController.fromArtboard(art, "Login Machine");

      if(stateMachineController !=null){
        art.addController(stateMachineController!);
        stateMachineController!.inputs.forEach((element) {
          if(element.name =="isChecking"){
            isChecking=element as SMIBool;
          }else if(element.name=="isHandsUp"){
            isHandsUP = element as SMIBool;

          } else if(element.name=="trigSuccess"){
            failtrgger = element as SMITrigger;
          }else if(element.name=="numLook"){
            lookNum = element as SMINumber;
          }

        });
      }
      setState(()=>artboard=art); {

      };

    });
    super.initState();
  }
  void lookAround(){
    isChecking?.change(true);
    isHandsUP?.change(false);
    lookNum?.change(0);
  }
  void moveEye(value){
    lookNum?.change(value.length.toDouble());
  }
  void handsuponeyes(){
    isHandsUP?.change(true);
    isChecking?.change(false);
  }
  void loginclick(){
    isHandsUP?.change(false);
    isChecking?.change(false);
    if(emailController.text=='email'&& passwordController.text=="password"){
      successTrigger?.fire();
    }else{
      failtrgger?.fire();
    }
    setState(() {

    });
  }


  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            if(artboard != null )
              SizedBox(
                height: 300,
                width: 500,
                child: Rive(artboard: artboard!,),
              ),

            Padding(
              padding: const EdgeInsets.only(top: 330),

              child: TextFormField(
                onChanged: ((value)=>moveEye(value)),
                onTap: lookAround,
                decoration: InputDecoration(
                  hintText: "enter Username ",
                  labelText: "Username",

                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),


                ),


              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: TextFormField(
                obscureText: true,
                onChanged: ((value)=>()),
                onTap: handsuponeyes,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",

                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(60),


                ),
              ),
            )
            ),
          Padding(
            padding: const EdgeInsets .only(top: 90),
            child: FloatingActionButton(backgroundColor: Colors.blue,  onPressed: (){
              loginclick();

            },child: Text("Login",style: TextStyle(color: Colors.white),),


            ),
          )

          ],
        ),
      ),
    );
  }
}
