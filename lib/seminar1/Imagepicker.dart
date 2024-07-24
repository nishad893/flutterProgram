//image_picker: ^0.8.5+3

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MaterialApp(
    home: ImagePickerExample(),
    debugShowCheckedModeBanner: false,
  ));
}

class ImagePickerExample extends StatefulWidget {
  @override
  _ImagePickerExampleState createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  XFile? _image;
  final picker = ImagePicker();
  // Pick an image

  Future<void> _pickImage() async {
    final XFile? selectedImage = await picker.pickImage(source: ImageSource.camera);
    // If an image is selected, update the state
    if (selectedImage != null) {
      setState(() {
        _image = selectedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_image != null)
              Image.file(File(_image!.path)),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick Image from Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}

