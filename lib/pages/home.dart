import 'package:flutter/material.dart';
import 'package:radiology_call_helper/widgets/notifications.dart';
import 'package:radiology_call_helper/widgets/on_call_studies.dart';
import 'package:radiology_call_helper/widgets/top_navigation_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.home_rounded),
          onPressed: () {},
        ),
        title: const Text('Radiology Call Helper'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
        ),
        child: Column(
          children: [
            TopNavigationBar(),
            OnCallStudies(),
            Notifications(),
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavigationBar(),
    );
  }
}
