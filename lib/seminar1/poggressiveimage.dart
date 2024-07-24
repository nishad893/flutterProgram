//progressive_image: ^2.0.0

import 'package:flutter/material.dart';
import 'package:progressive_image/progressive_image.dart';

void main() {
  runApp(MaterialApp(
    home: MyImagePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progressive Image Example'),
      ),
      body: Center(
        child: ProgressiveImage(
          placeholder: AssetImage('assets/images/loading.gif'), // Your placeholder image
          thumbnail: NetworkImage('https://images.unsplash.com/photo-1713617317250-c7020e06230f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), // Low-resolution thumbnail
          image: NetworkImage('https://images.unsplash.com/photo-1713617317250-c7020e06230f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), // Full-resolution image
          height: 700, // Set the desired height
          width: 400, // Set the desired width
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
      ),
    );
  }
}
