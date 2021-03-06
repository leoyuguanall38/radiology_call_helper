import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:radiology_call_helper/widgets/nav_drawer.dart';
import 'package:radiology_call_helper/widgets/notifications.dart';
import 'package:radiology_call_helper/widgets/on_call_studies.dart';
import 'package:radiology_call_helper/widgets/top_navigation_bar.dart';
import 'package:radiology_call_helper/data/app_initialize_data.dart';

var _selectedSection = selectedSection;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _notifications;

  @override
  void initState() {
    _notifications = [];
    initializeAllSectionsData();
    super.initState();
  }

  void selectSection() {
    setState(() {
      _selectedSection = selectedSection;
    });
  }

  void refresh() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        title: const Text('Radiology Call Helper'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Home(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
        ),
        child: Column(
          children: [
            TopNavigationBar(selectSection),
            OnCallStudies(_selectedSection),
            Notifications(_notifications),
          ],
        ),
      ),
    );
  }
}
