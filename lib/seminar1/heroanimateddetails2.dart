import 'package:flutter/material.dart';

class Detailspage2 extends StatelessWidget {
  const Detailspage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mclaren Artura",
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
                  image: AssetImage(
                      "assets/image/1-McLaren-Artura-Spider.jpeg"),
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 20, left: 5, right: 5),
                  child: Center(
                    child: Text(
                      "Mclaren Artura: \nIntroducing the new Artura, a high-performance hybrid supercar to it’s core. From the advanced McLaren Carbon Fibre Lightweight Architecture (MCLA) to the V6 twin-turbocharged hybrid petrol engine that forms its beating heart. Our relentless pursuit of lightness reaches another level. Aerodynamic efficiency is more advanced than ever. Helping to shape a minimal, beautiful new design.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
