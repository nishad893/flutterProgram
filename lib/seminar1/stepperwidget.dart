import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Steppereg(),));
}

class Steppereg extends StatefulWidget {
  const Steppereg({super.key});
  @override
  State<Steppereg> createState() => _StepperegState();
}
class _StepperegState extends State<Steppereg> {
  int currentStep=0;
  continueStep(){
    if(currentStep<3){
      setState(() {
        currentStep++;
      });}}
  cancelStep(){
    if(currentStep>0){
      setState(() {
        currentStep--;
      });}}
  onStepTap(int a){
    setState(() {
      currentStep=a;});}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        currentStep: currentStep,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        onStepTapped: onStepTap,
        steps: [
          Step(title: Text("STEP 1"), content: Text("1st step is this"),isActive: currentStep>=0),
          Step(title: Text("STEP 2"), content: Text("2nd step is this"),isActive: currentStep>=1),
          Step(title: Text("STEP 3"), content: Text("3rd step is this"),isActive: currentStep>=2),
          Step(title: Text("STEP 4"), content: Text("4th step is this"),isActive: currentStep>=3),

        ],
      ),
    );
  }
}
