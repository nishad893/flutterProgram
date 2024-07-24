


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

main() {
  runApp(MaterialApp(
   home: MapStudy(),
   debugShowCheckedModeBanner: false,
      ));
}

class MapStudy extends StatefulWidget {
  const MapStudy({super.key});

  @override
  State<MapStudy> createState() => _MapStudyState();
}

class _MapStudyState extends State<MapStudy> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(11.260600014737589, 75.7798070180346), zoom: 14.4746);

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(11.440043312869197, 75.70875453606502),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          mapType: MapType.hybrid,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToLake,
        label: const Text("To the lake"),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}