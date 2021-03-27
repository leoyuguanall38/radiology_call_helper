import 'package:flutter/material.dart';
import 'package:radiology_call_helper/pages/home.dart';

void main() {
  runApp(RadiologyCallHelper());
}

class RadiologyCallHelper extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radiology Call Helper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
