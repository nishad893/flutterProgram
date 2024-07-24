import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Introscreeneg(),
  ));
}

class Introscreeneg extends StatelessWidget {
  const Introscreeneg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
              titleWidget: Text(
                "Welcome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              body: "Welcome to the app",
              image: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image(
                  image: AssetImage("assets/image/splash3.png"),
                  height: 400,
                  width: 400,
                ),
              )),
          PageViewModel(
              titleWidget: Text(
                "Write title of page",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              body: "Write the more description",
              image: Image(
                image: AssetImage("assets/image/bg1.png"),
                height: 400,
                width: 400,
              )),
          PageViewModel(
              titleWidget: Text(
                "Write title of page",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              body: "Write the more description",
              image: Image(
                image: AssetImage("assets/image/bg1.png"),
                height: 400,
                width: 400,
              )),
        ],
        onDone: () {},
        onSkip: () {},
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
        ),
        next: Icon(Icons.arrow_forward,color: Colors.blue,),
        done: Text(
          "Done",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
        ),
        dotsDecorator: DotsDecorator(
            size: Size.square(10.0),
            activeSize: Size(20, 10.0),
            color: Colors.black26,
            activeColor: Colors.blue,
            spacing: EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            )
        ),
      ),
    );
  }
}
