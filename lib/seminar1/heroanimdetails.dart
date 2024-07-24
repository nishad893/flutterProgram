import 'package:flutter/material.dart';

class Detailpage1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ferrari",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Hero(
            tag: "myAnimation",
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/image/Ferrari.webp"),
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 05, right: 05),
                  child: Text(
                    "Ferrari: \nThe 296 GTB, an evolution of Ferrari’s mid-rear-engined two-seater sports berlinetta concept, represents a revolution for the Maranello-based company as it \nintroduces the new 120° V6 engine coupled with a plug-in (PHEV) electric motor capable of delivering up to 830 cv. The car thus defines the idea of driving fun to provide pure excitement not only when pursuing maximum performance but also in everyday driving.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
